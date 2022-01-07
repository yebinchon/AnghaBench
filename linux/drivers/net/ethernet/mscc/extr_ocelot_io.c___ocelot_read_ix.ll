; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_io.c___ocelot_read_ix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_io.c___ocelot_read_ix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { i64**, i32* }

@TARGET_OFFSET = common dso_local global i64 0, align 8
@REG_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__ocelot_read_ix(%struct.ocelot* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ocelot*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ocelot* %0, %struct.ocelot** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @TARGET_OFFSET, align 8
  %11 = lshr i64 %9, %10
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %18 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %24 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %23, i32 0, i32 0
  %25 = load i64**, i64*** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i64*, i64** %25, i64 %26
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @REG_MASK, align 8
  %31 = and i64 %29, %30
  %32 = getelementptr inbounds i64, i64* %28, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %33, %34
  %36 = call i32 @regmap_read(i32 %22, i64 %35, i64* %8)
  %37 = load i64, i64* %8, align 8
  ret i64 %37
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @regmap_read(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_write_subreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_write_subreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_local = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at86rf230_local*, i32, i32, i32, i32)* @at86rf230_write_subreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at86rf230_write_subreg(%struct.at86rf230_local* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.at86rf230_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.at86rf230_local* %0, %struct.at86rf230_local** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.at86rf230_local*, %struct.at86rf230_local** %6, align 8
  %14 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load %struct.at86rf230_local*, %struct.at86rf230_local** %6, align 8
  %20 = call i32 @at86rf230_awake(%struct.at86rf230_local* %19)
  br label %21

21:                                               ; preds = %18, %5
  %22 = load %struct.at86rf230_local*, %struct.at86rf230_local** %6, align 8
  %23 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 %27, %28
  %30 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.at86rf230_local*, %struct.at86rf230_local** %6, align 8
  %35 = call i32 @at86rf230_sleep(%struct.at86rf230_local* %34)
  br label %36

36:                                               ; preds = %33, %21
  %37 = load i32, i32* %12, align 4
  ret i32 %37
}

declare dso_local i32 @at86rf230_awake(%struct.at86rf230_local*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @at86rf230_sleep(%struct.at86rf230_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

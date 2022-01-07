; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_hw_get_macaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_hw_get_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { i32 }

@MAADR1 = common dso_local global i32 0, align 4
@MAADR2 = common dso_local global i32 0, align 4
@MAADR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encx24j600_priv*, i8*)* @encx24j600_hw_get_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encx24j600_hw_get_macaddr(%struct.encx24j600_priv* %0, i8* %1) #0 {
  %3 = alloca %struct.encx24j600_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %7 = load i32, i32* @MAADR1, align 4
  %8 = call zeroext i16 @encx24j600_read_reg(%struct.encx24j600_priv* %6, i32 %7)
  store i16 %8, i16* %5, align 2
  %9 = load i16, i16* %5, align 2
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 255
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %12, i8* %14, align 1
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 65280
  %18 = ashr i32 %17, 8
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 %19, i8* %21, align 1
  %22 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %23 = load i32, i32* @MAADR2, align 4
  %24 = call zeroext i16 @encx24j600_read_reg(%struct.encx24j600_priv* %22, i32 %23)
  store i16 %24, i16* %5, align 2
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 255
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8 %28, i8* %30, align 1
  %31 = load i16, i16* %5, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 65280
  %34 = lshr i32 %33, 8
  %35 = trunc i32 %34 to i8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8 %35, i8* %37, align 1
  %38 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %39 = load i32, i32* @MAADR3, align 4
  %40 = call zeroext i16 @encx24j600_read_reg(%struct.encx24j600_priv* %38, i32 %39)
  store i16 %40, i16* %5, align 2
  %41 = load i16, i16* %5, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  store i8 %44, i8* %46, align 1
  %47 = load i16, i16* %5, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, 65280
  %50 = lshr i32 %49, 8
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 5
  store i8 %51, i8* %53, align 1
  ret void
}

declare dso_local zeroext i16 @encx24j600_read_reg(%struct.encx24j600_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_set_all_gains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_set_all_gains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32 }

@B43_OFDMTAB_GAINX = common dso_local global i32 0, align 4
@B43_OFDMTAB_GAINX_R1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32)* @b43_set_all_gains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_set_all_gains(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43_phy*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  store %struct.b43_phy* %16, %struct.b43_phy** %9, align 8
  store i32 8, i32* %11, align 4
  store i32 24, i32* %12, align 4
  %17 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %18 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 16, i32* %11, align 4
  store i32 32, i32* %12, align 4
  br label %22

22:                                               ; preds = %21, %4
  %23 = load i32, i32* @B43_OFDMTAB_GAINX, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %25 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @B43_OFDMTAB_GAINX_R1, align 4
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %28, %22
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %40, %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %31

43:                                               ; preds = %31
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %55, %43
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %50, i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %45

58:                                               ; preds = %45
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %62, 14
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 %64, 6
  %66 = or i32 %63, %65
  store i32 %66, i32* %13, align 4
  %67 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @b43_phy_maskset(%struct.b43_wldev* %67, i32 1184, i32 49087, i32 %68)
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @b43_phy_maskset(%struct.b43_wldev* %70, i32 1185, i32 49087, i32 %71)
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @b43_phy_maskset(%struct.b43_wldev* %73, i32 1186, i32 49087, i32 %74)
  br label %76

76:                                               ; preds = %61, %58
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %78 = call i32 @b43_dummy_transmission(%struct.b43_wldev* %77, i32 0, i32 1)
  ret void
}

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_dummy_transmission(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

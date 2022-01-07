; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_power_saving_ctl_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_power_saving_ctl_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B43_PS_ENABLED = common dso_local global i32 0, align 4
@B43_PS_DISABLED = common dso_local global i32 0, align 4
@B43_PS_AWAKE = common dso_local global i32 0, align 4
@B43_PS_ASLEEP = common dso_local global i32 0, align 4
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_HWPS = common dso_local global i32 0, align 4
@B43_MACCTL_AWAKE = common dso_local global i32 0, align 4
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_SH_UCODESTAT = common dso_local global i32 0, align 4
@B43_SHM_SH_UCODESTAT_SLEEP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_power_saving_ctl_bits(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @B43_PS_ENABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @B43_PS_DISABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %14, %2
  %20 = phi i1 [ false, %2 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @B43_WARN_ON(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @B43_PS_AWAKE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @B43_PS_ASLEEP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %27, %19
  %33 = phi i1 [ false, %19 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @B43_WARN_ON(i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @B43_PS_ENABLED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  br label %49

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @B43_PS_DISABLED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %48

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @B43_PS_AWAKE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %8, align 4
  br label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @B43_PS_ASLEEP, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %62

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %60
  br label %63

63:                                               ; preds = %62, %54
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %65 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %66 = call i32 @b43_read32(%struct.b43_wldev* %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @B43_MACCTL_HWPS, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %78

73:                                               ; preds = %63
  %74 = load i32, i32* @B43_MACCTL_HWPS, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %69
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @B43_MACCTL_AWAKE, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %90

85:                                               ; preds = %78
  %86 = load i32, i32* @B43_MACCTL_AWAKE, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %85, %81
  %91 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %92 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @b43_write32(%struct.b43_wldev* %91, i32 %92, i32 %93)
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %96 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %97 = call i32 @b43_read32(%struct.b43_wldev* %95, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %90
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %102 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %105, 5
  br i1 %106, label %107, label %126

107:                                              ; preds = %100
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %122, %107
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %109, 100
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %113 = load i32, i32* @B43_SHM_SHARED, align 4
  %114 = load i32, i32* @B43_SHM_SH_UCODESTAT, align 4
  %115 = call i64 @b43_shm_read16(%struct.b43_wldev* %112, i32 %113, i32 %114)
  store i64 %115, i64* %6, align 8
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @B43_SHM_SH_UCODESTAT_SLEEP, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %125

120:                                              ; preds = %111
  %121 = call i32 @udelay(i32 10)
  br label %122

122:                                              ; preds = %120
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %108

125:                                              ; preds = %119, %108
  br label %126

126:                                              ; preds = %125, %100, %90
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

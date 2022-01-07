; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-arasan.c_arasan_phy_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-arasan.c_arasan_phy_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32 }

@HISPD_MODE = common dso_local global i32 0, align 4
@HS200_MODE = common dso_local global i32 0, align 4
@MODE_CTRL = common dso_local global i32 0, align 4
@HS400_MODE = common dso_local global i32 0, align 4
@IPAD_CTRL1 = common dso_local global i32 0, align 4
@LEGACY_MODE = common dso_local global i32 0, align 4
@OTAP_DELAY = common dso_local global i32 0, align 4
@ITAP_DELAY = common dso_local global i32 0, align 4
@DLL_TRIM = common dso_local global i32 0, align 4
@DLL_STATUS = common dso_local global i32 0, align 4
@DLL_RDY_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_host*, i32, i32, i32, i32, i32, i32)* @arasan_phy_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arasan_phy_set(%struct.sdhci_host* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sdhci_host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @HISPD_MODE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @HS200_MODE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %7
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %27 = load i32, i32* @MODE_CTRL, align 4
  %28 = call i32 @arasan_phy_write(%struct.sdhci_host* %26, i32 0, i32 %27)
  store i32 %28, i32* %17, align 4
  br label %34

29:                                               ; preds = %21
  %30 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @MODE_CTRL, align 4
  %33 = call i32 @arasan_phy_write(%struct.sdhci_host* %30, i32 %31, i32 %32)
  store i32 %33, i32* %17, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %17, align 4
  store i32 %38, i32* %8, align 4
  br label %161

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @HS400_MODE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @HS200_MODE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %43, %39
  %48 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %49 = load i32, i32* @IPAD_CTRL1, align 4
  %50 = call i32 @arasan_phy_read(%struct.sdhci_host* %48, i32 %49, i32* %16)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %8, align 4
  br label %161

55:                                               ; preds = %47
  %56 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @IOPAD(i32 %57, i32 %58)
  %60 = load i32, i32* @IPAD_CTRL1, align 4
  %61 = call i32 @arasan_phy_write(%struct.sdhci_host* %56, i32 %59, i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %8, align 4
  br label %161

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %43
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @LEGACY_MODE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %73 = load i32, i32* @OTAP_DELAY, align 4
  %74 = call i32 @arasan_phy_write(%struct.sdhci_host* %72, i32 0, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %8, align 4
  br label %161

79:                                               ; preds = %71
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %81 = load i32, i32* @ITAP_DELAY, align 4
  %82 = call i32 @arasan_phy_write(%struct.sdhci_host* %80, i32 0, i32 %81)
  store i32 %82, i32* %17, align 4
  br label %108

83:                                               ; preds = %67
  %84 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @OTAPDLY(i32 %85)
  %87 = load i32, i32* @OTAP_DELAY, align 4
  %88 = call i32 @arasan_phy_write(%struct.sdhci_host* %84, i32 %86, i32 %87)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %17, align 4
  store i32 %92, i32* %8, align 4
  br label %161

93:                                               ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @HS200_MODE, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @ITAPDLY(i32 %99)
  %101 = load i32, i32* @ITAP_DELAY, align 4
  %102 = call i32 @arasan_phy_write(%struct.sdhci_host* %98, i32 %100, i32 %101)
  store i32 %102, i32* %17, align 4
  br label %107

103:                                              ; preds = %93
  %104 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %105 = load i32, i32* @ITAP_DELAY, align 4
  %106 = call i32 @arasan_phy_write(%struct.sdhci_host* %104, i32 0, i32 %105)
  store i32 %106, i32* %17, align 4
  br label %107

107:                                              ; preds = %103, %97
  br label %108

108:                                              ; preds = %107, %79
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %17, align 4
  store i32 %112, i32* %8, align 4
  br label %161

113:                                              ; preds = %108
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @LEGACY_MODE, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @DLL_TRIM, align 4
  %121 = call i32 @arasan_phy_write(%struct.sdhci_host* %118, i32 %119, i32 %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %17, align 4
  store i32 %125, i32* %8, align 4
  br label %161

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126, %113
  %128 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %129 = load i32, i32* @DLL_STATUS, align 4
  %130 = call i32 @arasan_phy_write(%struct.sdhci_host* %128, i32 0, i32 %129)
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %17, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = load i32, i32* %17, align 4
  store i32 %134, i32* %8, align 4
  br label %161

135:                                              ; preds = %127
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @LEGACY_MODE, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %135
  %140 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @FREQSEL(i32 %141)
  %143 = load i32, i32* @DLL_STATUS, align 4
  %144 = call i32 @arasan_phy_write(%struct.sdhci_host* %140, i32 %142, i32 %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %139
  %148 = load i32, i32* %17, align 4
  store i32 %148, i32* %8, align 4
  br label %161

149:                                              ; preds = %139
  %150 = load %struct.sdhci_host*, %struct.sdhci_host** %9, align 8
  %151 = load i32, i32* @DLL_STATUS, align 4
  %152 = load i32, i32* @DLL_RDY_MASK, align 4
  %153 = call i32 @arasan_phy_sts_poll(%struct.sdhci_host* %150, i32 %151, i32 %152)
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i32, i32* @EBUSY, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %8, align 4
  br label %161

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159, %135
  store i32 0, i32* %8, align 4
  br label %161

161:                                              ; preds = %160, %156, %147, %133, %124, %111, %91, %77, %64, %53, %37
  %162 = load i32, i32* %8, align 4
  ret i32 %162
}

declare dso_local i32 @arasan_phy_write(%struct.sdhci_host*, i32, i32) #1

declare dso_local i32 @arasan_phy_read(%struct.sdhci_host*, i32, i32*) #1

declare dso_local i32 @IOPAD(i32, i32) #1

declare dso_local i32 @OTAPDLY(i32) #1

declare dso_local i32 @ITAPDLY(i32) #1

declare dso_local i32 @FREQSEL(i32) #1

declare dso_local i32 @arasan_phy_sts_poll(%struct.sdhci_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

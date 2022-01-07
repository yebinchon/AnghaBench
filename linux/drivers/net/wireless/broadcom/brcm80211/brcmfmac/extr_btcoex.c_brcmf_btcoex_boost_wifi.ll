; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_btcoex.c_brcmf_btcoex_boost_wifi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_btcoex.c_brcmf_btcoex_boost_wifi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_btcoex_info = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.brcmf_if = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"new SCO/eSCO coex algo {save & override}\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"saved bt_params[50,51,64,65,71]: 0x%x 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@BRCMF_BT_DHCP_REG50 = common dso_local global i32 0, align 4
@BRCMF_BT_DHCP_REG51 = common dso_local global i32 0, align 4
@BRCMF_BT_DHCP_REG64 = common dso_local global i32 0, align 4
@BRCMF_BT_DHCP_REG65 = common dso_local global i32 0, align 4
@BRCMF_BT_DHCP_REG71 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Do new SCO/eSCO coex algo {restore}\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"restored bt_params[50,51,64,65,71]: 0x%x 0x%x 0x%x 0x%x 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"attempted to restore not saved BTCOEX params\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_btcoex_info*, i32)* @brcmf_btcoex_boost_wifi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_btcoex_boost_wifi(%struct.brcmf_btcoex_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_btcoex_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_if*, align 8
  store %struct.brcmf_btcoex_info* %0, %struct.brcmf_btcoex_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %6, i32 0, i32 6
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.brcmf_if* @brcmf_get_ifp(i32 %10, i32 0)
  store %struct.brcmf_if* %11, %struct.brcmf_if** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %2
  %15 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %16 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %76, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @INFO, align 4
  %21 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %23 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %24 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %23, i32 0, i32 5
  %25 = call i32 @brcmf_btcoex_params_read(%struct.brcmf_if* %22, i32 50, i32* %24)
  %26 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %27 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %28 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %27, i32 0, i32 4
  %29 = call i32 @brcmf_btcoex_params_read(%struct.brcmf_if* %26, i32 51, i32* %28)
  %30 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %31 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %32 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %31, i32 0, i32 3
  %33 = call i32 @brcmf_btcoex_params_read(%struct.brcmf_if* %30, i32 64, i32* %32)
  %34 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %35 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %36 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %35, i32 0, i32 2
  %37 = call i32 @brcmf_btcoex_params_read(%struct.brcmf_if* %34, i32 65, i32* %36)
  %38 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %39 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %40 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %39, i32 0, i32 1
  %41 = call i32 @brcmf_btcoex_params_read(%struct.brcmf_if* %38, i32 71, i32* %40)
  %42 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %43 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @INFO, align 4
  %45 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %46 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %49 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %52 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %55 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %58 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %44, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50, i32 %53, i32 %56, i32 %59)
  %61 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %62 = load i32, i32* @BRCMF_BT_DHCP_REG50, align 4
  %63 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %61, i32 50, i32 %62)
  %64 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %65 = load i32, i32* @BRCMF_BT_DHCP_REG51, align 4
  %66 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %64, i32 51, i32 %65)
  %67 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %68 = load i32, i32* @BRCMF_BT_DHCP_REG64, align 4
  %69 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %67, i32 64, i32 %68)
  %70 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %71 = load i32, i32* @BRCMF_BT_DHCP_REG65, align 4
  %72 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %70, i32 65, i32 %71)
  %73 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %74 = load i32, i32* @BRCMF_BT_DHCP_REG71, align 4
  %75 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %73, i32 71, i32 %74)
  br label %132

76:                                               ; preds = %14, %2
  %77 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %78 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %128

81:                                               ; preds = %76
  %82 = load i32, i32* @INFO, align 4
  %83 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %84 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %85 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %86 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %84, i32 50, i32 %87)
  %89 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %90 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %91 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %89, i32 51, i32 %92)
  %94 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %95 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %96 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %94, i32 64, i32 %97)
  %99 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %100 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %101 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %99, i32 65, i32 %102)
  %104 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %105 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %106 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %104, i32 71, i32 %107)
  %109 = load i32, i32* @INFO, align 4
  %110 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %111 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %114 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %117 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %120 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %123 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %109, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %115, i32 %118, i32 %121, i32 %124)
  %126 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %3, align 8
  %127 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %126, i32 0, i32 0
  store i32 0, i32* %127, align 8
  br label %131

128:                                              ; preds = %76
  %129 = load i32, i32* @INFO, align 4
  %130 = call i32 (i32, i8*, ...) @brcmf_dbg(i32 %129, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %81
  br label %132

132:                                              ; preds = %131, %19
  ret void
}

declare dso_local %struct.brcmf_if* @brcmf_get_ifp(i32, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, ...) #1

declare dso_local i32 @brcmf_btcoex_params_read(%struct.brcmf_if*, i32, i32*) #1

declare dso_local i32 @brcmf_btcoex_params_write(%struct.brcmf_if*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

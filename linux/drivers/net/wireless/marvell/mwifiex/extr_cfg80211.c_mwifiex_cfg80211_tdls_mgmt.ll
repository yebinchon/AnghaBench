; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_tdls_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_tdls_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.mwifiex_private = type { i64, i32, i64 }

@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@MWIFIEX_BSS_TYPE_STA = common dso_local global i64 0, align 8
@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Send TDLS Setup Request to %pM status_code=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Send TDLS Setup Response to %pM status_code=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Send TDLS Confirm to %pM status_code=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Send TDLS Tear down to %pM\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Send TDLS Discovery Request to %pM\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Send TDLS Discovery Response to %pM\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Unknown TDLS mgmt/action frame %pM\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i32, i32, i32, i32*, i64)* @mwifiex_cfg80211_tdls_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_tdls_mgmt(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.wiphy*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.mwifiex_private*, align 8
  %23 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %12, align 8
  store %struct.net_device* %1, %struct.net_device** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i64 %9, i64* %21, align 8
  %24 = load %struct.net_device*, %struct.net_device** %13, align 8
  %25 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %24)
  store %struct.mwifiex_private* %25, %struct.mwifiex_private** %22, align 8
  %26 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %27 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %10
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %161

35:                                               ; preds = %10
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MWIFIEX_BSS_TYPE_STA, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %43 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41, %35
  %47 = load i32, i32* @ENOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %161

49:                                               ; preds = %41
  %50 = load i32, i32* %15, align 4
  switch i32 %50, label %150 [
    i32 130, label %51
    i32 129, label %70
    i32 131, label %89
    i32 128, label %105
    i32 132, label %120
    i32 133, label %135
  ]

51:                                               ; preds = %49
  %52 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %53 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MSG, align 4
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %17, align 4
  %58 = call i32 (i32, i32, i8*, i32*, ...) @mwifiex_dbg(i32 %54, i32 %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32* %56, i32 %57)
  %59 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @mwifiex_add_auto_tdls_peer(%struct.mwifiex_private* %59, i32* %60)
  %62 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = load i32*, i32** %20, align 8
  %68 = load i64, i64* %21, align 8
  %69 = call i32 @mwifiex_send_tdls_data_frame(%struct.mwifiex_private* %62, i32* %63, i32 %64, i32 %65, i32 %66, i32* %67, i64 %68)
  store i32 %69, i32* %23, align 4
  br label %159

70:                                               ; preds = %49
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @mwifiex_add_auto_tdls_peer(%struct.mwifiex_private* %71, i32* %72)
  %74 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %75 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MSG, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %17, align 4
  %80 = call i32 (i32, i32, i8*, i32*, ...) @mwifiex_dbg(i32 %76, i32 %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32* %78, i32 %79)
  %81 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32*, i32** %20, align 8
  %87 = load i64, i64* %21, align 8
  %88 = call i32 @mwifiex_send_tdls_data_frame(%struct.mwifiex_private* %81, i32* %82, i32 %83, i32 %84, i32 %85, i32* %86, i64 %87)
  store i32 %88, i32* %23, align 4
  br label %159

89:                                               ; preds = %49
  %90 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %91 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MSG, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 (i32, i32, i8*, i32*, ...) @mwifiex_dbg(i32 %92, i32 %93, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32* %94, i32 %95)
  %97 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32*, i32** %20, align 8
  %103 = load i64, i64* %21, align 8
  %104 = call i32 @mwifiex_send_tdls_data_frame(%struct.mwifiex_private* %97, i32* %98, i32 %99, i32 %100, i32 %101, i32* %102, i64 %103)
  store i32 %104, i32* %23, align 4
  br label %159

105:                                              ; preds = %49
  %106 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %107 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MSG, align 4
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 (i32, i32, i8*, i32*, ...) @mwifiex_dbg(i32 %108, i32 %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32* %110)
  %112 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32*, i32** %20, align 8
  %118 = load i64, i64* %21, align 8
  %119 = call i32 @mwifiex_send_tdls_data_frame(%struct.mwifiex_private* %112, i32* %113, i32 %114, i32 %115, i32 %116, i32* %117, i64 %118)
  store i32 %119, i32* %23, align 4
  br label %159

120:                                              ; preds = %49
  %121 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %122 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @MSG, align 4
  %125 = load i32*, i32** %14, align 8
  %126 = call i32 (i32, i32, i8*, i32*, ...) @mwifiex_dbg(i32 %123, i32 %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32* %125)
  %127 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32*, i32** %20, align 8
  %133 = load i64, i64* %21, align 8
  %134 = call i32 @mwifiex_send_tdls_data_frame(%struct.mwifiex_private* %127, i32* %128, i32 %129, i32 %130, i32 %131, i32* %132, i64 %133)
  store i32 %134, i32* %23, align 4
  br label %159

135:                                              ; preds = %49
  %136 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %137 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MSG, align 4
  %140 = load i32*, i32** %14, align 8
  %141 = call i32 (i32, i32, i8*, i32*, ...) @mwifiex_dbg(i32 %138, i32 %139, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32* %140)
  %142 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32*, i32** %20, align 8
  %148 = load i64, i64* %21, align 8
  %149 = call i32 @mwifiex_send_tdls_action_frame(%struct.mwifiex_private* %142, i32* %143, i32 %144, i32 %145, i32 %146, i32* %147, i64 %148)
  store i32 %149, i32* %23, align 4
  br label %159

150:                                              ; preds = %49
  %151 = load %struct.mwifiex_private*, %struct.mwifiex_private** %22, align 8
  %152 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @ERROR, align 4
  %155 = load i32*, i32** %14, align 8
  %156 = call i32 (i32, i32, i8*, i32*, ...) @mwifiex_dbg(i32 %153, i32 %154, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32* %155)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %23, align 4
  br label %159

159:                                              ; preds = %150, %135, %120, %105, %89, %70, %51
  %160 = load i32, i32* %23, align 4
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %159, %46, %32
  %162 = load i32, i32* %11, align 4
  ret i32 %162
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32*, ...) #1

declare dso_local i32 @mwifiex_add_auto_tdls_peer(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @mwifiex_send_tdls_data_frame(%struct.mwifiex_private*, i32*, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @mwifiex_send_tdls_action_frame(%struct.mwifiex_private*, i32*, i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

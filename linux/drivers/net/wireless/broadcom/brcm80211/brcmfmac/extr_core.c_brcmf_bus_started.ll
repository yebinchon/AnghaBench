; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_bus_started.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_bus_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { %struct.TYPE_5__*, %struct.brcmf_if**, i32*, i32, %struct.TYPE_6__, %struct.TYPE_7__, %struct.brcmf_bus* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.brcmf_if = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.brcmf_bus = type { i32 }
%struct.cfg80211_ops = type { i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@BRCMF_BUS_UP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@brcmf_core_bus_reset = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"revinfo\00", align 1
@brcmf_revinfo_read = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@bus_reset_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"failed: %d\0A\00", align 1
@brcmf_inet6addr_changed = common dso_local global i32 0, align 4
@brcmf_inetaddr_changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pub*, %struct.cfg80211_ops*)* @brcmf_bus_started to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_bus_started(%struct.brcmf_pub* %0, %struct.cfg80211_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca %struct.cfg80211_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_bus*, align 8
  %8 = alloca %struct.brcmf_if*, align 8
  %9 = alloca %struct.brcmf_if*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %4, align 8
  store %struct.cfg80211_ops* %1, %struct.cfg80211_ops** %5, align 8
  store i32 -1, i32* %6, align 4
  %10 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %11 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %10, i32 0, i32 6
  %12 = load %struct.brcmf_bus*, %struct.brcmf_bus** %11, align 8
  store %struct.brcmf_bus* %12, %struct.brcmf_bus** %7, align 8
  %13 = load i32, i32* @TRACE, align 4
  %14 = call i32 @brcmf_dbg(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %16 = call %struct.brcmf_if* @brcmf_add_if(%struct.brcmf_pub* %15, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store %struct.brcmf_if* %16, %struct.brcmf_if** %8, align 8
  %17 = load %struct.brcmf_if*, %struct.brcmf_if** %8, align 8
  %18 = call i64 @IS_ERR(%struct.brcmf_if* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.brcmf_if*, %struct.brcmf_if** %8, align 8
  %22 = call i32 @PTR_ERR(%struct.brcmf_if* %21)
  store i32 %22, i32* %3, align 4
  br label %158

23:                                               ; preds = %2
  store %struct.brcmf_if* null, %struct.brcmf_if** %9, align 8
  %24 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %25 = load i32, i32* @BRCMF_BUS_UP, align 4
  %26 = call i32 @brcmf_bus_change_state(%struct.brcmf_bus* %24, i32 %25)
  %27 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %28 = call i32 @brcmf_bus_preinit(%struct.brcmf_bus* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %113

32:                                               ; preds = %23
  %33 = load %struct.brcmf_if*, %struct.brcmf_if** %8, align 8
  %34 = call i32 @brcmf_c_preinit_dcmds(%struct.brcmf_if* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %113

38:                                               ; preds = %32
  %39 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %40 = call i32 @brcmf_feat_attach(%struct.brcmf_pub* %39)
  %41 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %42 = call i32 @brcmf_proto_init_done(%struct.brcmf_pub* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %113

46:                                               ; preds = %38
  %47 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %48 = load %struct.brcmf_if*, %struct.brcmf_if** %8, align 8
  %49 = call i32 @brcmf_proto_add_if(%struct.brcmf_pub* %47, %struct.brcmf_if* %48)
  %50 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %51 = load %struct.cfg80211_ops*, %struct.cfg80211_ops** %5, align 8
  %52 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %53 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32* @brcmf_cfg80211_attach(%struct.brcmf_pub* %50, %struct.cfg80211_ops* %51, i64 %56)
  %58 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %59 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %58, i32 0, i32 2
  store i32* %57, i32** %59, align 8
  %60 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %61 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %46
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %113

67:                                               ; preds = %46
  %68 = load %struct.brcmf_if*, %struct.brcmf_if** %8, align 8
  %69 = call i32 @brcmf_net_attach(%struct.brcmf_if* %68, i32 0)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %91, label %72

72:                                               ; preds = %67
  %73 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %74 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %81 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %80, i32 0, i32 1
  %82 = load %struct.brcmf_if**, %struct.brcmf_if*** %81, align 8
  %83 = getelementptr inbounds %struct.brcmf_if*, %struct.brcmf_if** %82, i64 1
  %84 = load %struct.brcmf_if*, %struct.brcmf_if** %83, align 8
  store %struct.brcmf_if* %84, %struct.brcmf_if** %9, align 8
  %85 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %86 = icmp ne %struct.brcmf_if* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %89 = call i32 @brcmf_net_p2p_attach(%struct.brcmf_if* %88)
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %87, %79
  br label %91

91:                                               ; preds = %90, %72, %67
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %113

95:                                               ; preds = %91
  %96 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %97 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %96, i32 0, i32 3
  %98 = load i32, i32* @brcmf_core_bus_reset, align 4
  %99 = call i32 @INIT_WORK(i32* %97, i32 %98)
  %100 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %101 = load i32, i32* @brcmf_revinfo_read, align 4
  %102 = call i32 @brcmf_debugfs_add_entry(%struct.brcmf_pub* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %104 = call i32 @brcmf_debugfs_get_devdir(%struct.brcmf_pub* %103)
  %105 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %106 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 384, i32 %104, %struct.brcmf_pub* %105, i32* @bus_reset_fops)
  %107 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %108 = call i32 @brcmf_feat_debugfs_create(%struct.brcmf_pub* %107)
  %109 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %110 = call i32 @brcmf_proto_debugfs_create(%struct.brcmf_pub* %109)
  %111 = load %struct.brcmf_bus*, %struct.brcmf_bus** %7, align 8
  %112 = call i32 @brcmf_bus_debugfs_create(%struct.brcmf_bus* %111)
  store i32 0, i32* %3, align 4
  br label %158

113:                                              ; preds = %94, %64, %45, %37, %31
  %114 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @bphy_err(%struct.brcmf_pub* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %118 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %113
  %122 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %123 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @brcmf_cfg80211_detach(i32* %124)
  %126 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %127 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %126, i32 0, i32 2
  store i32* null, i32** %127, align 8
  br label %128

128:                                              ; preds = %121, %113
  %129 = load %struct.brcmf_if*, %struct.brcmf_if** %8, align 8
  %130 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @brcmf_net_detach(i32 %131, i32 0)
  %133 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %134 = icmp ne %struct.brcmf_if* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.brcmf_if*, %struct.brcmf_if** %9, align 8
  %137 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @brcmf_net_detach(i32 %138, i32 0)
  br label %140

140:                                              ; preds = %135, %128
  %141 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %142 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %141, i32 0, i32 1
  %143 = load %struct.brcmf_if**, %struct.brcmf_if*** %142, align 8
  %144 = getelementptr inbounds %struct.brcmf_if*, %struct.brcmf_if** %143, i64 0
  store %struct.brcmf_if* null, %struct.brcmf_if** %144, align 8
  %145 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %146 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %145, i32 0, i32 1
  %147 = load %struct.brcmf_if**, %struct.brcmf_if*** %146, align 8
  %148 = getelementptr inbounds %struct.brcmf_if*, %struct.brcmf_if** %147, i64 1
  store %struct.brcmf_if* null, %struct.brcmf_if** %148, align 8
  %149 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %150 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %140
  store i32 0, i32* %6, align 4
  br label %156

156:                                              ; preds = %155, %140
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %156, %95, %20
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local %struct.brcmf_if* @brcmf_add_if(%struct.brcmf_pub*, i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.brcmf_if*) #1

declare dso_local i32 @PTR_ERR(%struct.brcmf_if*) #1

declare dso_local i32 @brcmf_bus_change_state(%struct.brcmf_bus*, i32) #1

declare dso_local i32 @brcmf_bus_preinit(%struct.brcmf_bus*) #1

declare dso_local i32 @brcmf_c_preinit_dcmds(%struct.brcmf_if*) #1

declare dso_local i32 @brcmf_feat_attach(%struct.brcmf_pub*) #1

declare dso_local i32 @brcmf_proto_init_done(%struct.brcmf_pub*) #1

declare dso_local i32 @brcmf_proto_add_if(%struct.brcmf_pub*, %struct.brcmf_if*) #1

declare dso_local i32* @brcmf_cfg80211_attach(%struct.brcmf_pub*, %struct.cfg80211_ops*, i64) #1

declare dso_local i32 @brcmf_net_attach(%struct.brcmf_if*, i32) #1

declare dso_local i32 @brcmf_net_p2p_attach(%struct.brcmf_if*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @brcmf_debugfs_add_entry(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.brcmf_pub*, i32*) #1

declare dso_local i32 @brcmf_debugfs_get_devdir(%struct.brcmf_pub*) #1

declare dso_local i32 @brcmf_feat_debugfs_create(%struct.brcmf_pub*) #1

declare dso_local i32 @brcmf_proto_debugfs_create(%struct.brcmf_pub*) #1

declare dso_local i32 @brcmf_bus_debugfs_create(%struct.brcmf_bus*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

declare dso_local i32 @brcmf_cfg80211_detach(i32*) #1

declare dso_local i32 @brcmf_net_detach(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

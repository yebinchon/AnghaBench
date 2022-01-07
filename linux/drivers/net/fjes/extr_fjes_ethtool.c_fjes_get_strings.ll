; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_ethtool.c_fjes_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_ethtool.c_fjes_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }
%struct.fjes_adapter = type { %struct.fjes_hw }
%struct.fjes_hw = type { i32, i32 }

@fjes_gstrings_stats = common dso_local global %struct.TYPE_3__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ep%u_com_regist_buf_exec\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ep%u_com_unregist_buf_exec\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ep%u_send_intr_rx\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"ep%u_send_intr_unshare\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ep%u_send_intr_zoneupdate\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ep%u_recv_intr_rx\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"ep%u_recv_intr_unshare\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"ep%u_recv_intr_stop\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"ep%u_recv_intr_zoneupdate\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"ep%u_tx_buffer_full\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"ep%u_tx_dropped_not_shared\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"ep%u_tx_dropped_ver_mismatch\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"ep%u_tx_dropped_buf_size_mismatch\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"ep%u_tx_dropped_vlanid_mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @fjes_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fjes_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.fjes_adapter*, align 8
  %8 = alloca %struct.fjes_hw*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.fjes_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.fjes_adapter* %12, %struct.fjes_adapter** %7, align 8
  %13 = load %struct.fjes_adapter*, %struct.fjes_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %13, i32 0, i32 0
  store %struct.fjes_hw* %14, %struct.fjes_hw** %8, align 8
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %157 [
    i32 128, label %17
  ]

17:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %37, %17
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fjes_gstrings_stats, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @fjes_gstrings_stats, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %32 = call i32 @memcpy(i32* %24, i32 %30, i32 %31)
  %33 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** %9, align 8
  br label %37

37:                                               ; preds = %23
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %18

40:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %153, %40
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %44 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %156

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %50 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %153

54:                                               ; preds = %47
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @sprintf(i32* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @sprintf(i32* %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %9, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @sprintf(i32* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @sprintf(i32* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %9, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @sprintf(i32* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %9, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @sprintf(i32* %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %9, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @sprintf(i32* %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %9, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @sprintf(i32* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %9, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @sprintf(i32* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %9, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @sprintf(i32* %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %9, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @sprintf(i32* %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %129 = load i32*, i32** %9, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %9, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @sprintf(i32* %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %9, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @sprintf(i32* %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %143 = load i32*, i32** %9, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32* %145, i32** %9, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @sprintf(i32* %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %9, align 8
  br label %153

153:                                              ; preds = %54, %53
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %10, align 4
  br label %41

156:                                              ; preds = %41
  br label %157

157:                                              ; preds = %3, %156
  ret void
}

declare dso_local %struct.fjes_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

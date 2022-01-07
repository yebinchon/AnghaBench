; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_set_hs_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_ioctl.c_mwifiex_set_hs_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.mwifiex_ds_hs_cfg = type { i8*, i8*, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"info: Host Sleep IOCTL\09is blocked in UAPSD/PPS mode\0A\00", align 1
@HS_CFG_CANCEL = common dso_local global i8* null, align 8
@MWIFIEX_IS_HS_CONFIGURED = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_HS_CFG_ENH = common dso_local global i32 0, align 4
@MWIFIEX_SYNC_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_set_hs_params(%struct.mwifiex_private* %0, i32 %1, i32 %2, %struct.mwifiex_ds_hs_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_ds_hs_cfg*, align 8
  %10 = alloca %struct.mwifiex_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mwifiex_ds_hs_cfg* %3, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 0
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  store %struct.mwifiex_adapter* %15, %struct.mwifiex_adapter** %10, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %16 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %17 = icmp ne %struct.mwifiex_ds_hs_cfg* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %171

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %168 [
    i32 128, label %23
    i32 129, label %148
  ]

23:                                               ; preds = %21
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %25 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %30 = load i32, i32* @INFO, align 4
  %31 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %29, i32 %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %169

32:                                               ; preds = %23
  %33 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %34 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %127

37:                                               ; preds = %32
  %38 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %39 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load i8*, i8** @HS_CFG_CANCEL, align 8
  %42 = icmp eq i8* %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %37
  %44 = load i32, i32* @MWIFIEX_IS_HS_CONFIGURED, align 4
  %45 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %46 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %45, i32 0, i32 1
  %47 = call i32 @test_bit(i32 %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %169

50:                                               ; preds = %43
  %51 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %52 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @le32_to_cpu(i8* %54)
  store i8* %55, i8** %12, align 8
  %56 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %57 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call i8* @cpu_to_le32(i8* %58)
  %60 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %61 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  br label %105

63:                                               ; preds = %37
  %64 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %65 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %94

68:                                               ; preds = %63
  %69 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %70 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @cpu_to_le32(i8* %71)
  %73 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %74 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  %76 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %77 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %80 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  %82 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %83 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %68
  %87 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %88 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %91 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i8* %89, i8** %92, align 8
  br label %93

93:                                               ; preds = %86, %68
  br label %104

94:                                               ; preds = %63
  %95 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %96 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** @HS_CFG_CANCEL, align 8
  %100 = call i8* @cpu_to_le32(i8* %99)
  %101 = icmp eq i8* %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  store i32 -1, i32* %11, align 4
  br label %169

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103, %93
  br label %105

105:                                              ; preds = %104, %50
  %106 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %107 = load i32, i32* @HostCmd_CMD_802_11_HS_CFG_ENH, align 4
  %108 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %109 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %108, i32 0, i32 0
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @MWIFIEX_SYNC_CMD, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %106, i32 %107, i32 128, i32 0, %struct.TYPE_2__* %109, i32 %113)
  store i32 %114, i32* %11, align 4
  %115 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %116 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** @HS_CFG_CANCEL, align 8
  %119 = icmp eq i8* %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %105
  %121 = load i8*, i8** %12, align 8
  %122 = call i8* @cpu_to_le32(i8* %121)
  %123 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %124 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  br label %126

126:                                              ; preds = %120, %105
  br label %147

127:                                              ; preds = %32
  %128 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %129 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i8* @cpu_to_le32(i8* %130)
  %132 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %133 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i8* %131, i8** %134, align 8
  %135 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %136 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %139 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  store i8* %137, i8** %140, align 8
  %141 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %142 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %145 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  store i8* %143, i8** %146, align 8
  br label %147

147:                                              ; preds = %127, %126
  br label %169

148:                                              ; preds = %21
  %149 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %150 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i8* @le32_to_cpu(i8* %152)
  %154 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %155 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %157 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %161 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %10, align 8
  %163 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.mwifiex_ds_hs_cfg*, %struct.mwifiex_ds_hs_cfg** %9, align 8
  %167 = getelementptr inbounds %struct.mwifiex_ds_hs_cfg, %struct.mwifiex_ds_hs_cfg* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  br label %169

168:                                              ; preds = %21
  store i32 -1, i32* %11, align 4
  br label %169

169:                                              ; preds = %168, %148, %147, %102, %49, %28
  %170 = load i32, i32* %11, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %169, %18
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le32(i8*) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

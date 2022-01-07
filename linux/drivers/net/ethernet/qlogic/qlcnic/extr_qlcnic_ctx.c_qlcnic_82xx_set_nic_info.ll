; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_set_nic_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_set_nic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.qlcnic_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.qlcnic_info_le = type { i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_CMD_SET_NIC_INFO = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to set nic info%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_set_nic_info(%struct.qlcnic_adapter* %0, %struct.qlcnic_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qlcnic_cmd_args, align 8
  %10 = alloca %struct.qlcnic_info_le*, align 8
  %11 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_info* %1, %struct.qlcnic_info** %5, align 8
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  store i64 72, i64* %11, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %155

23:                                               ; preds = %2
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @dma_alloc_coherent(i32* %27, i64 %28, i32* %7, i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %155

36:                                               ; preds = %23
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to %struct.qlcnic_info_le*
  store %struct.qlcnic_info_le* %38, %struct.qlcnic_info_le** %10, align 8
  %39 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %40 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @cpu_to_le16(i32 %41)
  %43 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %44 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %43, i32 0, i32 9
  store i8* %42, i8** %44, align 8
  %45 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %46 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %50 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %49, i32 0, i32 8
  store i8* %48, i8** %50, align 8
  %51 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %52 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %56 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %58 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @cpu_to_le16(i32 %59)
  %61 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %62 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %64 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cpu_to_le32(i32 %65)
  %67 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %68 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %70 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %73 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %75 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_le16(i32 %76)
  %78 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %79 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %81 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_le16(i32 %82)
  %84 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %85 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %87 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @cpu_to_le16(i32 %88)
  %90 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %91 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %93 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_le16(i32 %94)
  %96 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %97 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %99 = load i32, i32* @QLCNIC_CMD_SET_NIC_INFO, align 4
  %100 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %9, %struct.qlcnic_adapter* %98, i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %36
  br label %145

104:                                              ; preds = %36
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @MSD(i32 %105)
  %107 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %106, i32* %110, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @LSD(i32 %111)
  %113 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32 %112, i32* %116, align 4
  %117 = load %struct.qlcnic_info*, %struct.qlcnic_info** %5, align 8
  %118 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 16
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %11, align 8
  %123 = or i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %9, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  store i32 %124, i32* %128, align 4
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %130 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %129, %struct.qlcnic_cmd_args* %9)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %104
  %135 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %136 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @dev_err(i32* %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %134, %104
  %144 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %9)
  br label %145

145:                                              ; preds = %143, %103
  %146 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %147 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %146, i32 0, i32 0
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %11, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @dma_free_coherent(i32* %149, i64 %150, i8* %151, i32 %152)
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %145, %33, %21
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @MSD(i32) #1

declare dso_local i32 @LSD(i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

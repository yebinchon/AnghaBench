; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_get_nic_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_82xx_get_nic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_info = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qlcnic_info_le = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_CMD_GET_NIC_INFO = common dso_local global i32 0, align 4
@QLCNIC_RCODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to get nic info%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_get_nic_info(%struct.qlcnic_adapter* %0, %struct.qlcnic_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_info_le*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.qlcnic_cmd_args, align 8
  %13 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_info* %1, %struct.qlcnic_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 40, i64* %13, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %13, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @dma_alloc_coherent(i32* %17, i64 %18, i32* %9, i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %145

26:                                               ; preds = %3
  %27 = load i8*, i8** %11, align 8
  %28 = bitcast i8* %27 to %struct.qlcnic_info_le*
  store %struct.qlcnic_info_le* %28, %struct.qlcnic_info_le** %10, align 8
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %30 = load i32, i32* @QLCNIC_CMD_GET_NIC_INFO, align 4
  %31 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %12, %struct.qlcnic_adapter* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %135

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @MSD(i32 %36)
  %38 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @LSD(i32 %42)
  %44 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = shl i32 %48, 16
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %13, align 8
  %52 = or i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 %53, i32* %57, align 4
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %59 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %58, %struct.qlcnic_cmd_args* %12)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @QLCNIC_RCODE_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %35
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %65 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %133

72:                                               ; preds = %35
  %73 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %74 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le16_to_cpu(i32 %75)
  %77 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %78 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %77, i32 0, i32 9
  store i8* %76, i8** %78, align 8
  %79 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %80 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le16_to_cpu(i32 %81)
  %83 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %84 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  %85 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %86 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le16_to_cpu(i32 %87)
  %89 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %90 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  %91 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %92 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le16_to_cpu(i32 %93)
  %95 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %96 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  %97 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %98 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @le16_to_cpu(i32 %99)
  %101 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %102 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %101, i32 0, i32 5
  store i8* %100, i8** %102, align 8
  %103 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %104 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le16_to_cpu(i32 %105)
  %107 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %108 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %110 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @le16_to_cpu(i32 %111)
  %113 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %114 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %116 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @le16_to_cpu(i32 %117)
  %119 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %120 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %122 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le32_to_cpu(i32 %123)
  %125 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %126 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.qlcnic_info_le*, %struct.qlcnic_info_le** %10, align 8
  %128 = getelementptr inbounds %struct.qlcnic_info_le, %struct.qlcnic_info_le* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @le16_to_cpu(i32 %129)
  %131 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %132 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %72, %63
  %134 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %12)
  br label %135

135:                                              ; preds = %133, %34
  %136 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %137 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %13, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @dma_free_coherent(i32* %139, i64 %140, i8* %141, i32 %142)
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %135, %23
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @MSD(i32) #1

declare dso_local i32 @LSD(i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

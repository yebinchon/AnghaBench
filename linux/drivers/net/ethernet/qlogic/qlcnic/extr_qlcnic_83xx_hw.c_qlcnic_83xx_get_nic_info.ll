; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_nic_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_get_nic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_5__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_5__ = type { i32 }
%struct.qlcnic_hardware_context = type { i32, i32 }
%struct.qlcnic_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@QLCNIC_CMD_GET_NIC_INFO = common dso_local global i32 0, align 4
@BIT_31 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to get nic info %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_get_nic_info(%struct.qlcnic_adapter* %0, %struct.qlcnic_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qlcnic_cmd_args, align 8
  %12 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_info* %1, %struct.qlcnic_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 1
  %15 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %14, align 8
  store %struct.qlcnic_hardware_context* %15, %struct.qlcnic_hardware_context** %12, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %17 = load i32, i32* @QLCNIC_CMD_GET_NIC_INFO, align 4
  %18 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %11, %struct.qlcnic_adapter* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %210

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %12, align 8
  %26 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 16
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @BIT_31, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %34, %35
  %37 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %36, i32* %40, align 4
  br label %50

41:                                               ; preds = %23
  %42 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %12, align 8
  %43 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 16
  %46 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %41, %29
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %52 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %51, %struct.qlcnic_cmd_args* %11)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_info(i32* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %207

62:                                               ; preds = %50
  %63 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %69 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 65535
  %76 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %77 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, -65536
  %84 = lshr i32 %83, 16
  %85 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %86 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 65535
  %93 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %94 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, -65536
  %101 = lshr i32 %100, 16
  %102 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %103 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %110 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 255
  %117 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %118 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 4
  %119 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, -65536
  %125 = lshr i32 %124, 16
  %126 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %127 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  %128 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 6
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 65535
  %134 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %135 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %134, i32 0, i32 8
  store i32 %133, i32* %135, align 4
  %136 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 6
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, -65536
  %142 = lshr i32 %141, 16
  %143 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %144 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %143, i32 0, i32 9
  store i32 %142, i32* %144, align 4
  %145 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 7
  %149 = load i32, i32* %148, align 4
  %150 = and i32 %149, 65535
  %151 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %152 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %151, i32 0, i32 10
  store i32 %150, i32* %152, align 4
  %153 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 7
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, -65536
  %159 = lshr i32 %158, 16
  %160 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %161 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %160, i32 0, i32 11
  store i32 %159, i32* %161, align 4
  %162 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 8
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %62
  %170 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 8
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 32766
  %176 = ashr i32 %175, 1
  %177 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %178 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %177, i32 0, i32 12
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %169, %62
  %180 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 8
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 65536
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 8
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 2147352576
  %194 = ashr i32 %193, 17
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %197 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %196, i32 0, i32 13
  store i32 %195, i32* %197, align 4
  br label %198

198:                                              ; preds = %187, %179
  %199 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %12, align 8
  %200 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %11, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 16
  %206 = call i32 @memcpy(i32 %201, i32* %205, i32 4)
  br label %207

207:                                              ; preds = %198, %55
  %208 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %11)
  %209 = load i32, i32* %8, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %207, %21
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

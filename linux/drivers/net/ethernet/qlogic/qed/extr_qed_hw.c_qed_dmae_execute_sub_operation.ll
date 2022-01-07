; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_dmae_execute_sub_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_dmae_execute_sub_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, %struct.dmae_cmd*, i64 }
%struct.dmae_cmd = type { i32, i8*, i8*, i8*, i8* }
%struct.qed_ptt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"qed_dmae_host2grc: Wait Failed. source_addr 0x%llx, grc_addr 0x%llx, size_in_dwords 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i64, i64, i32, i32, i32)* @qed_dmae_execute_sub_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dmae_execute_sub_operation(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca %struct.qed_ptt*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.dmae_cmd*, align 8
  %18 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %9, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %20 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %16, align 8
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.dmae_cmd*, %struct.dmae_cmd** %25, align 8
  store %struct.dmae_cmd* %26, %struct.dmae_cmd** %17, align 8
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %62 [
    i32 130, label %28
    i32 129, label %28
    i32 128, label %39
  ]

28:                                               ; preds = %7, %7
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @upper_32_bits(i64 %29)
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %33 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @lower_32_bits(i64 %34)
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %38 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  br label %65

39:                                               ; preds = %7
  %40 = load i64, i64* %16, align 8
  %41 = call i32 @upper_32_bits(i64 %40)
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %44 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call i32 @lower_32_bits(i64 %45)
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %49 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %51 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i64, i64* %11, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(i8* %54, i8* %56, i32 %60)
  br label %65

62:                                               ; preds = %7
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %128

65:                                               ; preds = %39, %28
  %66 = load i32, i32* %14, align 4
  switch i32 %66, label %89 [
    i32 130, label %67
    i32 129, label %67
    i32 128, label %78
  ]

67:                                               ; preds = %65, %65
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @upper_32_bits(i64 %68)
  %70 = call i8* @cpu_to_le32(i32 %69)
  %71 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %72 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @lower_32_bits(i64 %73)
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %77 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %92

78:                                               ; preds = %65
  %79 = load i64, i64* %16, align 8
  %80 = call i32 @upper_32_bits(i64 %79)
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %83 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i64, i64* %16, align 8
  %85 = call i32 @lower_32_bits(i64 %84)
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %88 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  br label %92

89:                                               ; preds = %65
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  br label %128

92:                                               ; preds = %78, %67
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @cpu_to_le16(i32 %93)
  %95 = load %struct.dmae_cmd*, %struct.dmae_cmd** %17, align 8
  %96 = getelementptr inbounds %struct.dmae_cmd, %struct.dmae_cmd* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %98 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %99 = call i32 @qed_dmae_post_command(%struct.qed_hwfn* %97, %struct.qed_ptt* %98)
  %100 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %101 = call i32 @qed_dmae_operation_wait(%struct.qed_hwfn* %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %92
  %105 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %12, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @DP_NOTICE(%struct.qed_hwfn* %105, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i64 %106, i64 %107, i32 %108)
  %110 = load i32, i32* %18, align 4
  store i32 %110, i32* %8, align 4
  br label %128

111:                                              ; preds = %92
  %112 = load i32, i32* %14, align 4
  %113 = icmp eq i32 %112, 128
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load i64, i64* %12, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %118 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = call i32 @memcpy(i8* %116, i8* %121, i32 %125)
  br label %127

127:                                              ; preds = %114, %111
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %127, %104, %89, %62
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @qed_dmae_post_command(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_dmae_operation_wait(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

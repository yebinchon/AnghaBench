; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_cmd_check_retval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_cmd_check_retval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.hclge_desc* }
%struct.hclge_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_hw*, %struct.hclge_desc*, i32, i32)* @hclge_cmd_check_retval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_cmd_check_retval(%struct.hclge_hw* %0, %struct.hclge_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hclge_hw*, align 8
  %6 = alloca %struct.hclge_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hclge_hw* %0, %struct.hclge_hw** %5, align 8
  store %struct.hclge_desc* %1, %struct.hclge_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %13 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %12, i64 0
  %14 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %47, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %17
  %22 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %22, i64 %24
  %26 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %27 = getelementptr inbounds %struct.hclge_hw, %struct.hclge_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.hclge_desc*, %struct.hclge_desc** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %30, i64 %32
  %34 = bitcast %struct.hclge_desc* %25 to i8*
  %35 = bitcast %struct.hclge_desc* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %40 = getelementptr inbounds %struct.hclge_hw, %struct.hclge_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sge i32 %38, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %21
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %17

50:                                               ; preds = %17
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @hclge_is_special_opcode(i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %59, i64 %62
  %64 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  store i32 %66, i32* %10, align 4
  br label %73

67:                                               ; preds = %50
  %68 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %69 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %68, i64 0
  %70 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le16_to_cpu(i32 %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %67, %58
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.hclge_hw*, %struct.hclge_hw** %5, align 8
  %76 = getelementptr inbounds %struct.hclge_hw, %struct.hclge_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @hclge_cmd_convert_err_code(i32 %78)
  ret i32 %79
}

declare dso_local i32 @le16_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hclge_is_special_opcode(i32) #1

declare dso_local i32 @hclge_cmd_convert_err_code(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

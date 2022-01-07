; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_desc_vfid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_desc_vfid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_desc = type { i32* }

@EIO = common dso_local global i32 0, align 4
@HCLGE_VF_NUM_IN_FIRST_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_desc*, i32, i32)* @hclge_update_desc_vfid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_update_desc_vfid(%struct.hclge_desc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hclge_desc* %0, %struct.hclge_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 255
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %96

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 192
  br i1 %23, label %24, label %59

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %6, align 4
  %28 = srem i32 %27, 32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 1, %32
  %34 = xor i32 %33, -1
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load %struct.hclge_desc*, %struct.hclge_desc** %5, align 8
  %37 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %36, i64 1
  %38 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %35
  store i32 %44, i32* %42, align 4
  br label %58

45:                                               ; preds = %24
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 1, %46
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = load %struct.hclge_desc*, %struct.hclge_desc** %5, align 8
  %50 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %49, i64 1
  %51 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %48
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %45, %31
  br label %95

59:                                               ; preds = %21, %18
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 %60, 192
  %62 = sdiv i32 %61, 32
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = srem i32 %63, 32
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 1, %68
  %70 = xor i32 %69, -1
  %71 = call i32 @cpu_to_le32(i32 %70)
  %72 = load %struct.hclge_desc*, %struct.hclge_desc** %5, align 8
  %73 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %72, i64 2
  %74 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %71
  store i32 %80, i32* %78, align 4
  br label %94

81:                                               ; preds = %59
  %82 = load i32, i32* %9, align 4
  %83 = shl i32 1, %82
  %84 = call i32 @cpu_to_le32(i32 %83)
  %85 = load %struct.hclge_desc*, %struct.hclge_desc** %5, align 8
  %86 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %85, i64 2
  %87 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %84
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %81, %67
  br label %95

95:                                               ; preds = %94, %58
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %15
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

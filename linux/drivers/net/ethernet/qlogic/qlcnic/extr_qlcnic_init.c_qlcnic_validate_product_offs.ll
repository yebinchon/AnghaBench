; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_validate_product_offs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_init.c_qlcnic_validate_product_offs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64*, i64 }
%struct.uni_table_desc = type { i32, i32, i32 }

@QLCNIC_UNI_DIR_SECT_PRODUCT_TBL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_UNI_FLAGS_OFF = common dso_local global i32 0, align 4
@QLCNIC_UNI_CHIP_REV_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_validate_product_offs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_validate_product_offs(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.uni_table_desc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %5, align 8
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = call i32 @qlcnic_has_mn(%struct.qlcnic_adapter* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i64*, i64** %5, align 8
  %25 = load i32, i32* @QLCNIC_UNI_DIR_SECT_PRODUCT_TBL, align 4
  %26 = call %struct.uni_table_desc* @qlcnic_get_table_desc(i64* %24, i32 %25)
  store %struct.uni_table_desc* %26, %struct.uni_table_desc** %4, align 8
  %27 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %28 = icmp ne %struct.uni_table_desc* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %131

32:                                               ; preds = %1
  %33 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %34 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32_to_cpu(i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %38 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le32_to_cpu(i32 %39)
  store i64 %40, i64* %8, align 8
  %41 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %42 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le32_to_cpu(i32 %43)
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = mul nsw i64 %45, %46
  %48 = add nsw i64 %44, %47
  store i64 %48, i64* %9, align 8
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %32
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %131

59:                                               ; preds = %32
  br label %60

60:                                               ; preds = %127, %59
  store i64 0, i64* %10, align 8
  br label %61

61:                                               ; preds = %121, %60
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %124

65:                                               ; preds = %61
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %15, align 8
  %71 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %72 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @le32_to_cpu(i32 %73)
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %77 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @le32_to_cpu(i32 %78)
  %80 = mul nsw i64 %75, %79
  %81 = add nsw i64 %74, %80
  store i64 %81, i64* %14, align 8
  %82 = load i64*, i64** %5, align 8
  %83 = load i64, i64* %14, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = bitcast i64* %84 to i32*
  %86 = load i32, i32* @QLCNIC_UNI_FLAGS_OFF, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i64 @le32_to_cpu(i32 %90)
  store i64 %91, i64* %12, align 8
  %92 = load i64*, i64** %5, align 8
  %93 = load i64, i64* %14, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = bitcast i64* %94 to i32*
  %96 = load i32, i32* @QLCNIC_UNI_CHIP_REV_OFF, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i64 @le32_to_cpu(i32 %100)
  store i64 %101, i64* %13, align 8
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 2
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %16, align 8
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* %13, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %65
  %111 = load i64, i64* %16, align 8
  %112 = shl i64 1, %111
  %113 = load i64, i64* %12, align 8
  %114 = and i64 %112, %113
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i64, i64* %14, align 8
  %118 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %119 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  store i32 0, i32* %2, align 4
  br label %131

120:                                              ; preds = %110, %65
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %10, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %10, align 8
  br label %61

124:                                              ; preds = %61
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 0, i32* %6, align 4
  br label %60

128:                                              ; preds = %124
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %128, %116, %56, %29
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @qlcnic_has_mn(%struct.qlcnic_adapter*) #1

declare dso_local %struct.uni_table_desc* @qlcnic_get_table_desc(i64*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

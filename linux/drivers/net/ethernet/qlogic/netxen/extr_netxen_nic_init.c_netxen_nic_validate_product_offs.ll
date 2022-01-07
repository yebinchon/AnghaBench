; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_nic_validate_product_offs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_nic_validate_product_offs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_4__, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64*, i64 }
%struct.uni_table_desc = type { i32, i32, i32 }

@NX_UNI_DIR_SECT_PRODUCT_TBL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NX_UNI_FLAGS_OFF = common dso_local global i32 0, align 4
@NX_UNI_CHIP_REV_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @netxen_nic_validate_product_offs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_validate_product_offs(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca %struct.uni_table_desc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %16 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %5, align 8
  %21 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @NX_IS_REVISION_P2(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %31

28:                                               ; preds = %1
  %29 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %30 = call i32 @netxen_p3_has_mn(%struct.netxen_adapter* %29)
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ 1, %27 ], [ %30, %28 ]
  store i32 %32, i32* %6, align 4
  %33 = load i64*, i64** %5, align 8
  %34 = load i32, i32* @NX_UNI_DIR_SECT_PRODUCT_TBL, align 4
  %35 = call %struct.uni_table_desc* @nx_get_table_desc(i64* %33, i32 %34)
  store %struct.uni_table_desc* %35, %struct.uni_table_desc** %4, align 8
  %36 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %37 = icmp eq %struct.uni_table_desc* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %144

41:                                               ; preds = %31
  %42 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %43 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @cpu_to_le32(i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %47 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @cpu_to_le32(i32 %48)
  store i64 %49, i64* %8, align 8
  %50 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %51 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @cpu_to_le32(i32 %52)
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = mul nsw i64 %54, %55
  %57 = add nsw i64 %53, %56
  store i64 %57, i64* %9, align 8
  %58 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %41
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %144

68:                                               ; preds = %41
  br label %69

69:                                               ; preds = %140, %68
  store i64 0, i64* %10, align 8
  br label %70

70:                                               ; preds = %127, %69
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %130

74:                                               ; preds = %70
  %75 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %14, align 8
  %79 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %80 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @cpu_to_le32(i32 %81)
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %85 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @cpu_to_le32(i32 %86)
  %88 = mul nsw i64 %83, %87
  %89 = add nsw i64 %82, %88
  store i64 %89, i64* %13, align 8
  %90 = load i64*, i64** %5, align 8
  %91 = load i64, i64* %13, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = bitcast i64* %92 to i32*
  %94 = load i32, i32* @NX_UNI_FLAGS_OFF, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @cpu_to_le32(i32 %97)
  store i64 %98, i64* %11, align 8
  %99 = load i64*, i64** %5, align 8
  %100 = load i64, i64* %13, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = bitcast i64* %101 to i32*
  %103 = load i32, i32* @NX_UNI_CHIP_REV_OFF, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @cpu_to_le32(i32 %106)
  store i64 %107, i64* %12, align 8
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 2
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %15, align 8
  %113 = load i64, i64* %14, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %74
  %117 = load i64, i64* %15, align 8
  %118 = shl i64 1, %117
  %119 = load i64, i64* %11, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i64, i64* %13, align 8
  %124 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  store i32 0, i32* %2, align 4
  br label %144

126:                                              ; preds = %116, %74
  br label %127

127:                                              ; preds = %126
  %128 = load i64, i64* %10, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %10, align 8
  br label %70

130:                                              ; preds = %70
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @NX_IS_REVISION_P3(i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i32 0, i32* %6, align 4
  br label %69

141:                                              ; preds = %133, %130
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %141, %122, %65, %38
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i64 @NX_IS_REVISION_P2(i64) #1

declare dso_local i32 @netxen_p3_has_mn(%struct.netxen_adapter*) #1

declare dso_local %struct.uni_table_desc* @nx_get_table_desc(i64*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i64 @NX_IS_REVISION_P3(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

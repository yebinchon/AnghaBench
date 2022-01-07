; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_delete_clsu32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_delete_clsu32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.ixgbe_jump_table** }
%struct.ixgbe_jump_table = type { i32, %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table*, i32 }
%struct.tc_cls_u32_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_MAX_HW_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IXGBE_MAX_LINK_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*, %struct.tc_cls_u32_offload*)* @ixgbe_delete_clsu32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_delete_clsu32(%struct.ixgbe_adapter* %0, %struct.tc_cls_u32_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.tc_cls_u32_offload*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ixgbe_jump_table*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.tc_cls_u32_offload* %1, %struct.tc_cls_u32_offload** %5, align 8
  %13 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %14 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %18 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @TC_U32_USERHTID(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %23 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 1048575
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.ixgbe_jump_table* null, %struct.ixgbe_jump_table** %12, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @IXGBE_MAX_HW_ENTRIES, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %163

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 2048
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @IXGBE_MAX_LINK_HANDLE, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %163

43:                                               ; preds = %36, %33
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 2048
  br i1 %45, label %46, label %77

46:                                               ; preds = %43
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %47, i32 0, i32 1
  %49 = load %struct.ixgbe_jump_table**, %struct.ixgbe_jump_table*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %49, i64 %51
  %53 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %52, align 8
  store %struct.ixgbe_jump_table* %53, %struct.ixgbe_jump_table** %12, align 8
  %54 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %12, align 8
  %55 = icmp ne %struct.ixgbe_jump_table* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %163

59:                                               ; preds = %46
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %12, align 8
  %63 = getelementptr inbounds %struct.ixgbe_jump_table, %struct.ixgbe_jump_table* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @test_bit(i32 %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %163

70:                                               ; preds = %59
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %12, align 8
  %74 = getelementptr inbounds %struct.ixgbe_jump_table, %struct.ixgbe_jump_table* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @clear_bit(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %70, %43
  store i32 1, i32* %10, align 4
  br label %78

78:                                               ; preds = %149, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @IXGBE_MAX_LINK_HANDLE, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %152

82:                                               ; preds = %78
  %83 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %84 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %83, i32 0, i32 1
  %85 = load %struct.ixgbe_jump_table**, %struct.ixgbe_jump_table*** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %85, i64 %87
  %89 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %88, align 8
  store %struct.ixgbe_jump_table* %89, %struct.ixgbe_jump_table** %12, align 8
  %90 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %12, align 8
  %91 = icmp ne %struct.ixgbe_jump_table* %90, null
  br i1 %91, label %92, label %148

92:                                               ; preds = %82
  %93 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %12, align 8
  %94 = getelementptr inbounds %struct.ixgbe_jump_table, %struct.ixgbe_jump_table* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %148

98:                                               ; preds = %92
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %127, %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @IXGBE_MAX_HW_ENTRIES, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %12, align 8
  %106 = getelementptr inbounds %struct.ixgbe_jump_table, %struct.ixgbe_jump_table* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @test_bit(i32 %104, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %103
  br label %127

111:                                              ; preds = %103
  %112 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %113 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %112, i32 0, i32 0
  %114 = call i32 @spin_lock(i32* %113)
  %115 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  %118 = call i32 @ixgbe_update_ethtool_fdir_entry(%struct.ixgbe_adapter* %115, i32* null, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %120 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %12, align 8
  %124 = getelementptr inbounds %struct.ixgbe_jump_table, %struct.ixgbe_jump_table* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @clear_bit(i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %111, %110
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %99

130:                                              ; preds = %99
  %131 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %12, align 8
  %132 = getelementptr inbounds %struct.ixgbe_jump_table, %struct.ixgbe_jump_table* %131, i32 0, i32 2
  %133 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %132, align 8
  %134 = call i32 @kfree(%struct.ixgbe_jump_table* %133)
  %135 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %12, align 8
  %136 = getelementptr inbounds %struct.ixgbe_jump_table, %struct.ixgbe_jump_table* %135, i32 0, i32 1
  %137 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %136, align 8
  %138 = call i32 @kfree(%struct.ixgbe_jump_table* %137)
  %139 = load %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %12, align 8
  %140 = call i32 @kfree(%struct.ixgbe_jump_table* %139)
  %141 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %142 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %141, i32 0, i32 1
  %143 = load %struct.ixgbe_jump_table**, %struct.ixgbe_jump_table*** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.ixgbe_jump_table*, %struct.ixgbe_jump_table** %143, i64 %145
  store %struct.ixgbe_jump_table* null, %struct.ixgbe_jump_table** %146, align 8
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %3, align 4
  br label %163

148:                                              ; preds = %92, %82
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %78

152:                                              ; preds = %78
  %153 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %154 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %153, i32 0, i32 0
  %155 = call i32 @spin_lock(i32* %154)
  %156 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @ixgbe_update_ethtool_fdir_entry(%struct.ixgbe_adapter* %156, i32* null, i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %160 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %159, i32 0, i32 0
  %161 = call i32 @spin_unlock(i32* %160)
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %152, %130, %67, %56, %40, %30
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @TC_U32_USERHTID(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ixgbe_update_ethtool_fdir_entry(%struct.ixgbe_adapter*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ixgbe_jump_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

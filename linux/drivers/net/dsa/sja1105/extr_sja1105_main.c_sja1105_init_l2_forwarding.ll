; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_init_l2_forwarding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_init_l2_forwarding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sja1105_table* }
%struct.sja1105_table = type { %struct.sja1105_l2_forwarding_entry*, i64, %struct.TYPE_4__* }
%struct.sja1105_l2_forwarding_entry = type { i32* }
%struct.TYPE_4__ = type { i32 }

@BLK_IDX_L2_FORWARDING = common dso_local global i64 0, align 8
@SJA1105_MAX_L2_FORWARDING_COUNT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4
@SJA1105_NUM_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*)* @sja1105_init_l2_forwarding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_init_l2_forwarding(%struct.sja1105_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sja1105_private*, align 8
  %4 = alloca %struct.sja1105_l2_forwarding_entry*, align 8
  %5 = alloca %struct.sja1105_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %3, align 8
  %9 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %10 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.sja1105_table*, %struct.sja1105_table** %11, align 8
  %13 = load i64, i64* @BLK_IDX_L2_FORWARDING, align 8
  %14 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %12, i64 %13
  store %struct.sja1105_table* %14, %struct.sja1105_table** %5, align 8
  %15 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %16 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %21 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %20, i32 0, i32 0
  %22 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %21, align 8
  %23 = call i32 @kfree(%struct.sja1105_l2_forwarding_entry* %22)
  %24 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %25 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %19, %1
  %27 = load i64, i64* @SJA1105_MAX_L2_FORWARDING_COUNT, align 8
  %28 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %29 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.sja1105_l2_forwarding_entry* @kcalloc(i64 %27, i32 %32, i32 %33)
  %35 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %36 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %35, i32 0, i32 0
  store %struct.sja1105_l2_forwarding_entry* %34, %struct.sja1105_l2_forwarding_entry** %36, align 8
  %37 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %38 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %37, i32 0, i32 0
  %39 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %38, align 8
  %40 = icmp ne %struct.sja1105_l2_forwarding_entry* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %127

44:                                               ; preds = %26
  %45 = load i64, i64* @SJA1105_MAX_L2_FORWARDING_COUNT, align 8
  %46 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %47 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %49 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %48, i32 0, i32 0
  %50 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %49, align 8
  store %struct.sja1105_l2_forwarding_entry* %50, %struct.sja1105_l2_forwarding_entry** %4, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %93, %44
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %51
  %56 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %57 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @dsa_upstream_port(i32 %58, i32 %59)
  store i32 %60, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %76, %55
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @SJA1105_NUM_TC, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, %struct.sja1105_l2_forwarding_entry* %67, i64 %69
  %71 = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, %struct.sja1105_l2_forwarding_entry* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %66, i32* %75, align 4
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %61

79:                                               ; preds = %61
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %93

84:                                               ; preds = %79
  %85 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %4, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @sja1105_port_allow_traffic(%struct.sja1105_l2_forwarding_entry* %85, i32 %86, i32 %87, i32 1)
  %89 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %4, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @sja1105_port_allow_traffic(%struct.sja1105_l2_forwarding_entry* %89, i32 %90, i32 %91, i32 1)
  br label %93

93:                                               ; preds = %84, %83
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %51

96:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %123, %96
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @SJA1105_NUM_TC, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %119, %101
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.sja1105_l2_forwarding_entry*, %struct.sja1105_l2_forwarding_entry** %4, align 8
  %109 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, %struct.sja1105_l2_forwarding_entry* %108, i64 %112
  %114 = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, %struct.sja1105_l2_forwarding_entry* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %107, i32* %118, align 4
  br label %119

119:                                              ; preds = %106
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %102

122:                                              ; preds = %102
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %97

126:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %41
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @kfree(%struct.sja1105_l2_forwarding_entry*) #1

declare dso_local %struct.sja1105_l2_forwarding_entry* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @dsa_upstream_port(i32, i32) #1

declare dso_local i32 @sja1105_port_allow_traffic(%struct.sja1105_l2_forwarding_entry*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

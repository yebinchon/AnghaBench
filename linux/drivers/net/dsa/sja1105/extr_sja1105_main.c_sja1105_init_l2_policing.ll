; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_init_l2_policing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_init_l2_policing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sja1105_table* }
%struct.sja1105_table = type { %struct.sja1105_l2_policing_entry*, i64, %struct.TYPE_4__* }
%struct.sja1105_l2_policing_entry = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BLK_IDX_L2_POLICING = common dso_local global i64 0, align 8
@SJA1105_MAX_L2_POLICING_COUNT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4
@SJA1105_NUM_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*)* @sja1105_init_l2_policing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_init_l2_policing(%struct.sja1105_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sja1105_private*, align 8
  %4 = alloca %struct.sja1105_l2_policing_entry*, align 8
  %5 = alloca %struct.sja1105_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %3, align 8
  %10 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %11 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.sja1105_table*, %struct.sja1105_table** %12, align 8
  %14 = load i64, i64* @BLK_IDX_L2_POLICING, align 8
  %15 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %13, i64 %14
  store %struct.sja1105_table* %15, %struct.sja1105_table** %5, align 8
  %16 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %17 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %22 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %21, i32 0, i32 0
  %23 = load %struct.sja1105_l2_policing_entry*, %struct.sja1105_l2_policing_entry** %22, align 8
  %24 = call i32 @kfree(%struct.sja1105_l2_policing_entry* %23)
  %25 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %26 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %20, %1
  %28 = load i64, i64* @SJA1105_MAX_L2_POLICING_COUNT, align 8
  %29 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %30 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.sja1105_l2_policing_entry* @kcalloc(i64 %28, i32 %33, i32 %34)
  %36 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %37 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %36, i32 0, i32 0
  store %struct.sja1105_l2_policing_entry* %35, %struct.sja1105_l2_policing_entry** %37, align 8
  %38 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %39 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %38, i32 0, i32 0
  %40 = load %struct.sja1105_l2_policing_entry*, %struct.sja1105_l2_policing_entry** %39, align 8
  %41 = icmp ne %struct.sja1105_l2_policing_entry* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %27
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %83

45:                                               ; preds = %27
  %46 = load i64, i64* @SJA1105_MAX_L2_POLICING_COUNT, align 8
  %47 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %48 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.sja1105_table*, %struct.sja1105_table** %5, align 8
  %50 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %49, i32 0, i32 0
  %51 = load %struct.sja1105_l2_policing_entry*, %struct.sja1105_l2_policing_entry** %50, align 8
  store %struct.sja1105_l2_policing_entry* %51, %struct.sja1105_l2_policing_entry** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %79, %45
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %52
  %57 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %58 = load i32, i32* @SJA1105_NUM_TC, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %70, %56
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SJA1105_NUM_TC, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load %struct.sja1105_l2_policing_entry*, %struct.sja1105_l2_policing_entry** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @sja1105_setup_policer(%struct.sja1105_l2_policing_entry* %67, i32 %68)
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %62

75:                                               ; preds = %62
  %76 = load %struct.sja1105_l2_policing_entry*, %struct.sja1105_l2_policing_entry** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @sja1105_setup_policer(%struct.sja1105_l2_policing_entry* %76, i32 %77)
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %52

82:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %42
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @kfree(%struct.sja1105_l2_policing_entry*) #1

declare dso_local %struct.sja1105_l2_policing_entry* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @sja1105_setup_policer(%struct.sja1105_l2_policing_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

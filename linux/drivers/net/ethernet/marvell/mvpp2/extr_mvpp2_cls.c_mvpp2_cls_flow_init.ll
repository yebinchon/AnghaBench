; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_flow_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_flow_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_cls_flow = type { i32 }
%struct.mvpp2_cls_flow_entry = type { i32 }

@MVPP22_CLS_ENGINE_C2 = common dso_local global i32 0, align 4
@MVPP22_CLS_LU_TYPE_ALL = common dso_local global i32 0, align 4
@MVPP2_MAX_PORTS = common dso_local global i32 0, align 4
@MVPP22_CLS_ENGINE_C3HA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*, %struct.mvpp2_cls_flow*)* @mvpp2_cls_flow_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_cls_flow_init(%struct.mvpp2* %0, %struct.mvpp2_cls_flow* %1) #0 {
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca %struct.mvpp2_cls_flow*, align 8
  %5 = alloca %struct.mvpp2_cls_flow_entry, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %3, align 8
  store %struct.mvpp2_cls_flow* %1, %struct.mvpp2_cls_flow** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %4, align 8
  %9 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MVPP2_CLS_FLT_FIRST(i32 %10)
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %37, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %4, align 8
  %15 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MVPP2_CLS_FLT_LAST(i32 %16)
  %18 = icmp sle i32 %13, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = call i32 @memset(%struct.mvpp2_cls_flow_entry* %5, i32 0, i32 4)
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, %struct.mvpp2_cls_flow_entry* %5, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = call i32 @mvpp2_cls_flow_pri_set(%struct.mvpp2_cls_flow_entry* %5, i32 %23)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %4, align 8
  %28 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @MVPP2_CLS_FLT_LAST(i32 %29)
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = call i32 @mvpp2_cls_flow_last_set(%struct.mvpp2_cls_flow_entry* %5, i32 1)
  br label %34

34:                                               ; preds = %32, %19
  %35 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %36 = call i32 @mvpp2_cls_flow_write(%struct.mvpp2* %35, %struct.mvpp2_cls_flow_entry* %5)
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %12

40:                                               ; preds = %12
  %41 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %42 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %4, align 8
  %43 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MVPP2_CLS_FLT_C2_RSS_ENTRY(i32 %44)
  %46 = call i32 @mvpp2_cls_flow_read(%struct.mvpp2* %41, i32 %45, %struct.mvpp2_cls_flow_entry* %5)
  %47 = load i32, i32* @MVPP22_CLS_ENGINE_C2, align 4
  %48 = call i32 @mvpp2_cls_flow_eng_set(%struct.mvpp2_cls_flow_entry* %5, i32 %47)
  %49 = call i32 @mvpp2_cls_flow_port_id_sel(%struct.mvpp2_cls_flow_entry* %5, i32 1)
  %50 = load i32, i32* @MVPP22_CLS_LU_TYPE_ALL, align 4
  %51 = call i32 @mvpp2_cls_flow_lu_type_set(%struct.mvpp2_cls_flow_entry* %5, i32 %50)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %60, %40
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MVPP2_MAX_PORTS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = call i32 @mvpp2_cls_flow_port_add(%struct.mvpp2_cls_flow_entry* %5, i32 %58)
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %52

63:                                               ; preds = %52
  %64 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %65 = call i32 @mvpp2_cls_flow_write(%struct.mvpp2* %64, %struct.mvpp2_cls_flow_entry* %5)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %86, %63
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @MVPP2_MAX_PORTS, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %4, align 8
  %74 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MVPP2_CLS_FLT_HASH_ENTRY(i32 %72, i32 %75)
  %77 = call i32 @mvpp2_cls_flow_read(%struct.mvpp2* %71, i32 %76, %struct.mvpp2_cls_flow_entry* %5)
  %78 = load i32, i32* @MVPP22_CLS_ENGINE_C3HA, align 4
  %79 = call i32 @mvpp2_cls_flow_eng_set(%struct.mvpp2_cls_flow_entry* %5, i32 %78)
  %80 = call i32 @mvpp2_cls_flow_port_id_sel(%struct.mvpp2_cls_flow_entry* %5, i32 1)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @BIT(i32 %81)
  %83 = call i32 @mvpp2_cls_flow_port_add(%struct.mvpp2_cls_flow_entry* %5, i32 %82)
  %84 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %85 = call i32 @mvpp2_cls_flow_write(%struct.mvpp2* %84, %struct.mvpp2_cls_flow_entry* %5)
  br label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %66

89:                                               ; preds = %66
  ret void
}

declare dso_local i32 @MVPP2_CLS_FLT_FIRST(i32) #1

declare dso_local i32 @MVPP2_CLS_FLT_LAST(i32) #1

declare dso_local i32 @memset(%struct.mvpp2_cls_flow_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_cls_flow_pri_set(%struct.mvpp2_cls_flow_entry*, i32) #1

declare dso_local i32 @mvpp2_cls_flow_last_set(%struct.mvpp2_cls_flow_entry*, i32) #1

declare dso_local i32 @mvpp2_cls_flow_write(%struct.mvpp2*, %struct.mvpp2_cls_flow_entry*) #1

declare dso_local i32 @mvpp2_cls_flow_read(%struct.mvpp2*, i32, %struct.mvpp2_cls_flow_entry*) #1

declare dso_local i32 @MVPP2_CLS_FLT_C2_RSS_ENTRY(i32) #1

declare dso_local i32 @mvpp2_cls_flow_eng_set(%struct.mvpp2_cls_flow_entry*, i32) #1

declare dso_local i32 @mvpp2_cls_flow_port_id_sel(%struct.mvpp2_cls_flow_entry*, i32) #1

declare dso_local i32 @mvpp2_cls_flow_lu_type_set(%struct.mvpp2_cls_flow_entry*, i32) #1

declare dso_local i32 @mvpp2_cls_flow_port_add(%struct.mvpp2_cls_flow_entry*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @MVPP2_CLS_FLT_HASH_ENTRY(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

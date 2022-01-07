; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_cls_lookup_entry = type { i32, i32, i64 }
%struct.mvpp2_cls_flow_entry = type { i32, %struct.mvpp2_cls_c2_entry }
%struct.mvpp2_cls_c2_entry = type { i32, i32 }

@MVPP2_CLS_MODE_REG = common dso_local global i32 0, align 4
@MVPP2_CLS_MODE_ACTIVE_MASK = common dso_local global i32 0, align 4
@MVPP2_CLS_FLOWS_TBL_SIZE = common dso_local global i32 0, align 4
@MVPP2_CLS_LKP_TBL_SIZE = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_N_ENTRIES = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_CTRL = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_TCAM_BYPASS_FIFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvpp2_cls_init(%struct.mvpp2* %0) #0 {
  %2 = alloca %struct.mvpp2*, align 8
  %3 = alloca %struct.mvpp2_cls_lookup_entry, align 8
  %4 = alloca %struct.mvpp2_cls_flow_entry, align 4
  %5 = alloca %struct.mvpp2_cls_c2_entry, align 4
  %6 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %2, align 8
  %7 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %8 = load i32, i32* @MVPP2_CLS_MODE_REG, align 4
  %9 = load i32, i32* @MVPP2_CLS_MODE_ACTIVE_MASK, align 4
  %10 = call i32 @mvpp2_write(%struct.mvpp2* %7, i32 %8, i32 %9)
  %11 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, %struct.mvpp2_cls_flow_entry* %4, i32 0, i32 1
  %12 = call i32 @memset(%struct.mvpp2_cls_c2_entry* %11, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %22, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MVPP2_CLS_FLOWS_TBL_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.mvpp2_cls_flow_entry, %struct.mvpp2_cls_flow_entry* %4, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %21 = call i32 @mvpp2_cls_flow_write(%struct.mvpp2* %20, %struct.mvpp2_cls_flow_entry* %4)
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %13

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, %struct.mvpp2_cls_lookup_entry* %3, i32 0, i32 2
  store i64 0, i64* %26, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %40, %25
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MVPP2_CLS_LKP_TBL_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, %struct.mvpp2_cls_lookup_entry* %3, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, %struct.mvpp2_cls_lookup_entry* %3, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %36 = call i32 @mvpp2_cls_lookup_write(%struct.mvpp2* %35, %struct.mvpp2_cls_lookup_entry* %3)
  %37 = getelementptr inbounds %struct.mvpp2_cls_lookup_entry, %struct.mvpp2_cls_lookup_entry* %3, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %39 = call i32 @mvpp2_cls_lookup_write(%struct.mvpp2* %38, %struct.mvpp2_cls_lookup_entry* %3)
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %27

43:                                               ; preds = %27
  %44 = call i32 @memset(%struct.mvpp2_cls_c2_entry* %5, i32 0, i32 8)
  %45 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %5, i32 0, i32 0
  store i32 0, i32* %45, align 4
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %55, %43
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MVPP22_CLS_C2_N_ENTRIES, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %5, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %54 = call i32 @mvpp2_cls_c2_write(%struct.mvpp2* %53, %struct.mvpp2_cls_c2_entry* %5)
  br label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %46

58:                                               ; preds = %46
  %59 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %60 = load i32, i32* @MVPP22_CLS_C2_TCAM_CTRL, align 4
  %61 = load i32, i32* @MVPP22_CLS_C2_TCAM_BYPASS_FIFO, align 4
  %62 = call i32 @mvpp2_write(%struct.mvpp2* %59, i32 %60, i32 %61)
  %63 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %64 = call i32 @mvpp2_cls_port_init_flows(%struct.mvpp2* %63)
  ret void
}

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @memset(%struct.mvpp2_cls_c2_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_cls_flow_write(%struct.mvpp2*, %struct.mvpp2_cls_flow_entry*) #1

declare dso_local i32 @mvpp2_cls_lookup_write(%struct.mvpp2*, %struct.mvpp2_cls_lookup_entry*) #1

declare dso_local i32 @mvpp2_cls_c2_write(%struct.mvpp2*, %struct.mvpp2_cls_c2_entry*) #1

declare dso_local i32 @mvpp2_cls_port_init_flows(%struct.mvpp2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

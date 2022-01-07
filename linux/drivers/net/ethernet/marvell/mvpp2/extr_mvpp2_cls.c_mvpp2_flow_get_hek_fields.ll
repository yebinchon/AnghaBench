; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_flow_get_hek_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_flow_get_hek_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_cls_flow_entry = type { i32 }

@MVPP22_CLS_HEK_OPT_MAC_DA = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_VLAN = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_VLAN_PRI = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_L3_PROTO = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_IP4SA = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_IP4DA = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_IP6SA = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_IP6DA = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_L4SIP = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_L4DIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvpp2_flow_get_hek_fields(%struct.mvpp2_cls_flow_entry* %0) #0 {
  %2 = alloca %struct.mvpp2_cls_flow_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvpp2_cls_flow_entry* %0, %struct.mvpp2_cls_flow_entry** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.mvpp2_cls_flow_entry*, %struct.mvpp2_cls_flow_entry** %2, align 8
  %8 = call i32 @mvpp2_cls_flow_hek_num_get(%struct.mvpp2_cls_flow_entry* %7)
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %60, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %63

13:                                               ; preds = %9
  %14 = load %struct.mvpp2_cls_flow_entry*, %struct.mvpp2_cls_flow_entry** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @mvpp2_cls_flow_hek_get(%struct.mvpp2_cls_flow_entry* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %58 [
    i32 130, label %18
    i32 129, label %22
    i32 128, label %26
    i32 133, label %30
    i32 136, label %34
    i32 137, label %38
    i32 134, label %42
    i32 135, label %46
    i32 131, label %50
    i32 132, label %54
  ]

18:                                               ; preds = %13
  %19 = load i32, i32* @MVPP22_CLS_HEK_OPT_MAC_DA, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %59

22:                                               ; preds = %13
  %23 = load i32, i32* @MVPP22_CLS_HEK_OPT_VLAN, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %13
  %27 = load i32, i32* @MVPP22_CLS_HEK_OPT_VLAN_PRI, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %59

30:                                               ; preds = %13
  %31 = load i32, i32* @MVPP22_CLS_HEK_OPT_L3_PROTO, align 4
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %59

34:                                               ; preds = %13
  %35 = load i32, i32* @MVPP22_CLS_HEK_OPT_IP4SA, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %59

38:                                               ; preds = %13
  %39 = load i32, i32* @MVPP22_CLS_HEK_OPT_IP4DA, align 4
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %59

42:                                               ; preds = %13
  %43 = load i32, i32* @MVPP22_CLS_HEK_OPT_IP6SA, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %59

46:                                               ; preds = %13
  %47 = load i32, i32* @MVPP22_CLS_HEK_OPT_IP6DA, align 4
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %59

50:                                               ; preds = %13
  %51 = load i32, i32* @MVPP22_CLS_HEK_OPT_L4SIP, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %13
  %55 = load i32, i32* @MVPP22_CLS_HEK_OPT_L4DIP, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %13
  br label %59

59:                                               ; preds = %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %9

63:                                               ; preds = %9
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @mvpp2_cls_flow_hek_num_get(%struct.mvpp2_cls_flow_entry*) #1

declare dso_local i32 @mvpp2_cls_flow_hek_get(%struct.mvpp2_cls_flow_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_sre_macaddr_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_sre_macaddr_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.qlcnic_macvlan_mbx = type { i32, i32, i32, i32, i32, i32, i64 }

@QLCNIC_HOST_CTX_STATE_FREED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_CMD_CONFIG_MAC_VLAN = common dso_local global i32 0, align 4
@QLC_83XX_MBX_CMD_NO_WAIT = common dso_local global i32 0, align 4
@QLCNIC_MAC_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_ADD = common dso_local global i32 0, align 4
@QLCNIC_MAC_VLAN_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_sre_macaddr_change(%struct.qlcnic_adapter* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qlcnic_cmd_args*, align 8
  %11 = alloca %struct.qlcnic_macvlan_mbx, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.qlcnic_cmd_args* null, %struct.qlcnic_cmd_args** %10, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QLCNIC_HOST_CTX_STATE_FREED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %126

25:                                               ; preds = %4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.qlcnic_cmd_args* @kzalloc(i32 16, i32 %26)
  store %struct.qlcnic_cmd_args* %27, %struct.qlcnic_cmd_args** %10, align 8
  %28 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %29 = icmp ne %struct.qlcnic_cmd_args* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %126

33:                                               ; preds = %25
  %34 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %36 = load i32, i32* @QLCNIC_CMD_CONFIG_MAC_VLAN, align 4
  %37 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %34, %struct.qlcnic_adapter* %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %122

41:                                               ; preds = %33
  %42 = load i32, i32* @QLC_83XX_MBX_CMD_NO_WAIT, align 4
  %43 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %44 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @QLCNIC_MAC_ADD, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %47
  %56 = load i32, i32* @QLCNIC_MAC_VLAN_ADD, align 4
  br label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @QLCNIC_MAC_VLAN_DEL, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %41
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, 256
  %64 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %65 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 %63, i32* %68, align 4
  %69 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %70 = call i32 @qlcnic_83xx_set_interface_id_macaddr(%struct.qlcnic_adapter* %69, i32* %13)
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %73 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %71
  store i32 %78, i32* %76, align 4
  %79 = load i64, i64* %8, align 8
  %80 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 6
  store i64 %79, i64* %80, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 3
  store i32 %95, i32* %96, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 4
  store i32 %99, i32* %100, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.qlcnic_macvlan_mbx, %struct.qlcnic_macvlan_mbx* %11, i32 0, i32 5
  store i32 %103, i32* %104, align 4
  %105 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %106 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32* %109, i32** %12, align 8
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @memcpy(i32* %110, %struct.qlcnic_macvlan_mbx* %11, i32 32)
  %112 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %113 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %114 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %112, %struct.qlcnic_cmd_args* %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %61
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %5, align 4
  br label %126

119:                                              ; preds = %61
  %120 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %121 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %120)
  br label %122

122:                                              ; preds = %119, %40
  %123 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %10, align 8
  %124 = call i32 @kfree(%struct.qlcnic_cmd_args* %123)
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %122, %117, %30, %22
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.qlcnic_cmd_args* @kzalloc(i32, i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_set_interface_id_macaddr(%struct.qlcnic_adapter*, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.qlcnic_macvlan_mbx*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @kfree(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

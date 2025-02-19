; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_extend_md_capab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_extend_md_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@QLCNIC_CMD_83XX_EXTEND_ISCSI_DUMP_CAP = common dso_local global i32 0, align 4
@QLCNIC_83XX_ADD_PORT0 = common dso_local global i32 0, align 4
@QLCNIC_83XX_ADD_PORT1 = common dso_local global i32 0, align 4
@QLCNIC_83XX_EXTENDED_MEM_SIZE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"failed to issue extend iSCSI minidump capability\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_extend_md_capab(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_cmd_args, align 8
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = load i32, i32* @QLCNIC_CMD_83XX_EXTEND_ISCSI_DUMP_CAP, align 4
  %8 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %4, %struct.qlcnic_adapter* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load i32, i32* @QLCNIC_83XX_ADD_PORT0, align 4
  %15 = load i32, i32* @QLCNIC_83XX_ADD_PORT1, align 4
  %16 = or i32 %14, %15
  %17 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %4, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %16, i32* %20, align 4
  %21 = load i8*, i8** @QLCNIC_83XX_EXTENDED_MEM_SIZE, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %4, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 %22, i32* %26, align 4
  %27 = load i8*, i8** @QLCNIC_83XX_EXTENDED_MEM_SIZE, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %4, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %28, i32* %32, align 4
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %34 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %33, %struct.qlcnic_cmd_args* %4)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %13
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %37, %13
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

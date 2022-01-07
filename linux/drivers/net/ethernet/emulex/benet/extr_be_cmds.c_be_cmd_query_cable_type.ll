; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_query_cable_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_query_cable_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@PAGE_DATA_LEN = common dso_local global i32 0, align 4
@TR_PAGE_A0 = common dso_local global i32 0, align 4
@QSFP_PLUS_CABLE_TYPE_OFFSET = common dso_local global i64 0, align 8
@SFP_PLUS_CABLE_TYPE_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_query_cable_type(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %6 = load i32, i32* @PAGE_DATA_LEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8*, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %11 = load i32, i32* @TR_PAGE_A0, align 4
  %12 = call i32 @be_cmd_read_port_transceiver_data(%struct.be_adapter* %10, i32 %11, i8** %9)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %1
  %16 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %34 [
    i32 129, label %20
    i32 128, label %27
  ]

20:                                               ; preds = %15
  %21 = load i64, i64* @QSFP_PLUS_CABLE_TYPE_OFFSET, align 8
  %22 = getelementptr inbounds i8*, i8** %9, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  br label %38

27:                                               ; preds = %15
  %28 = load i64, i64* @SFP_PLUS_CABLE_TYPE_OFFSET, align 8
  %29 = getelementptr inbounds i8*, i8** %9, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i8* %30, i8** %33, align 8
  br label %38

34:                                               ; preds = %15
  %35 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i8* null, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %27, %20
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* %5, align 4
  %41 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %41)
  ret i32 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @be_cmd_read_port_transceiver_data(%struct.be_adapter*, i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

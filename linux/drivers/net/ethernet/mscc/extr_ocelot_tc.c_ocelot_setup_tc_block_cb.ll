; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_tc.c_ocelot_setup_tc_block_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_tc.c_ocelot_setup_tc_block_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_port = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"tc_block_cb: TC_SETUP_CLSMATCHALL %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ingress\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"egress\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"tc_block_cb: type %d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32)* @ocelot_setup_tc_block_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_setup_tc_block_cb(i32 %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocelot_port*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.ocelot_port*
  store %struct.ocelot_port* %12, %struct.ocelot_port** %10, align 8
  %13 = load %struct.ocelot_port*, %struct.ocelot_port** %10, align 8
  %14 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @tc_cls_can_offload_and_chain0(i32 %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %50

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %38 [
    i32 128, label %24
    i32 129, label %37
  ]

24:                                               ; preds = %22
  %25 = load %struct.ocelot_port*, %struct.ocelot_port** %10, align 8
  %26 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.ocelot_port*, %struct.ocelot_port** %10, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ocelot_setup_tc_cls_matchall(%struct.ocelot_port* %33, i8* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %50

37:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %50

38:                                               ; preds = %22
  %39 = load %struct.ocelot_port*, %struct.ocelot_port** %10, align 8
  %40 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %42, i8* %46)
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %38, %37, %24, %19
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @tc_cls_can_offload_and_chain0(i32, i8*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @ocelot_setup_tc_cls_matchall(%struct.ocelot_port*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

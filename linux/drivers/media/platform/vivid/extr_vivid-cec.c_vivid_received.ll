; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-cec.c_vivid_received.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-cec.c_vivid_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.cec_msg = type { i32 }
%struct.vivid_dev = type { i32, i32* }

@ENOMSG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@CEC_OP_ABORT_INVALID_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, %struct.cec_msg*)* @vivid_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vivid_received(%struct.cec_adapter* %0, %struct.cec_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca %struct.cec_msg*, align 8
  %6 = alloca %struct.vivid_dev*, align 8
  %7 = alloca %struct.cec_msg, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [14 x i8], align 1
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store %struct.cec_msg* %1, %struct.cec_msg** %5, align 8
  %11 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %12 = call %struct.vivid_dev* @cec_get_drvdata(%struct.cec_adapter* %11)
  store %struct.vivid_dev* %12, %struct.vivid_dev** %6, align 8
  %13 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %14 = call i32 @cec_msg_destination(%struct.cec_msg* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %16 = call i64 @cec_msg_is_broadcast(%struct.cec_msg* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %28 = call i32 @cec_msg_initiator(%struct.cec_msg* %27)
  %29 = call i32 @cec_msg_init(%struct.cec_msg* %7, i32 %26, i32 %28)
  %30 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %31 = call i32 @cec_msg_opcode(%struct.cec_msg* %30)
  switch i32 %31, label %76 [
    i32 131, label %32
  ]

32:                                               ; preds = %25
  %33 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %34 = call i32 @cec_is_sink(%struct.cec_adapter* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @ENOMSG, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %80

39:                                               ; preds = %32
  %40 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %41 = getelementptr inbounds [14 x i8], [14 x i8]* %10, i64 0, i64 0
  %42 = call i32 @cec_ops_set_osd_string(%struct.cec_msg* %40, i32* %9, i8* %41)
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %68 [
    i32 129, label %44
    i32 128, label %53
    i32 130, label %61
  ]

44:                                               ; preds = %39
  %45 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %46 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds [14 x i8], [14 x i8]* %10, i64 0, i64 0
  %49 = call i32 @strscpy(i32* %47, i8* %48, i32 8)
  %50 = load i32, i32* @jiffies, align 4
  %51 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %52 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %75

53:                                               ; preds = %39
  %54 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %55 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds [14 x i8], [14 x i8]* %10, i64 0, i64 0
  %58 = call i32 @strscpy(i32* %56, i8* %57, i32 8)
  %59 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %60 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %75

61:                                               ; preds = %39
  %62 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %63 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 0, i32* %65, align 4
  %66 = load %struct.vivid_dev*, %struct.vivid_dev** %6, align 8
  %67 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %75

68:                                               ; preds = %39
  %69 = load %struct.cec_msg*, %struct.cec_msg** %5, align 8
  %70 = call i32 @cec_msg_opcode(%struct.cec_msg* %69)
  %71 = load i32, i32* @CEC_OP_ABORT_INVALID_OP, align 4
  %72 = call i32 @cec_msg_feature_abort(%struct.cec_msg* %7, i32 %70, i32 %71)
  %73 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %74 = call i32 @cec_transmit_msg(%struct.cec_adapter* %73, %struct.cec_msg* %7, i32 0)
  br label %75

75:                                               ; preds = %68, %61, %53, %44
  br label %79

76:                                               ; preds = %25
  %77 = load i32, i32* @ENOMSG, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %80

79:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %76, %36
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.vivid_dev* @cec_get_drvdata(%struct.cec_adapter*) #1

declare dso_local i32 @cec_msg_destination(%struct.cec_msg*) #1

declare dso_local i64 @cec_msg_is_broadcast(%struct.cec_msg*) #1

declare dso_local i32 @cec_msg_init(%struct.cec_msg*, i32, i32) #1

declare dso_local i32 @cec_msg_initiator(%struct.cec_msg*) #1

declare dso_local i32 @cec_msg_opcode(%struct.cec_msg*) #1

declare dso_local i32 @cec_is_sink(%struct.cec_adapter*) #1

declare dso_local i32 @cec_ops_set_osd_string(%struct.cec_msg*, i32*, i8*) #1

declare dso_local i32 @strscpy(i32*, i8*, i32) #1

declare dso_local i32 @cec_msg_feature_abort(%struct.cec_msg*, i32, i32) #1

declare dso_local i32 @cec_transmit_msg(%struct.cec_adapter*, %struct.cec_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

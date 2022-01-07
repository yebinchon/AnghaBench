; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_parse_csi2_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_parse_csi2_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_state = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.device_node = type { i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ADV748X_PORT_TXA = common dso_local global i32 0, align 4
@ADV748X_PORT_TXB = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_DPHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"TXA: Invalid number (%u) of lanes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"TXA: using %u lanes\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"TXB: Invalid number (%u) of lanes\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"TXB: using %u lanes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_state*, i32, %struct.device_node*)* @adv748x_parse_csi2_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_parse_csi2_lanes(%struct.adv748x_state* %0, i32 %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adv748x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adv748x_state* %0, %struct.adv748x_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ADV748X_PORT_TXA, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ADV748X_PORT_TXB, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %92

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @V4L2_MBUS_CSI2_DPHY, align 4
  %21 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %8, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.device_node*, %struct.device_node** %7, align 8
  %23 = call i32 @of_fwnode_handle(%struct.device_node* %22)
  %24 = call i32 @v4l2_fwnode_endpoint_parse(i32 %23, %struct.v4l2_fwnode_endpoint* %8)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %92

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %8, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %8, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ADV748X_PORT_TXA, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 2
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 4
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @adv_err(%struct.adv748x_state* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %92

54:                                               ; preds = %45, %42, %39
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %57 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %60 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %61 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @adv_dbg(%struct.adv748x_state* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %54, %29
  %66 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, %struct.v4l2_fwnode_endpoint* %8, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ADV748X_PORT_TXB, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @adv_err(%struct.adv748x_state* %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %92

80:                                               ; preds = %71
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %83 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  %85 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %86 = load %struct.adv748x_state*, %struct.adv748x_state** %5, align 8
  %87 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @adv_dbg(%struct.adv748x_state* %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %80, %65
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %74, %48, %27, %18
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @v4l2_fwnode_endpoint_parse(i32, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @of_fwnode_handle(%struct.device_node*) #1

declare dso_local i32 @adv_err(%struct.adv748x_state*, i8*, i32) #1

declare dso_local i32 @adv_dbg(%struct.adv748x_state*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

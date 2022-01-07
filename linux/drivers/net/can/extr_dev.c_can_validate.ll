; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_dev.c_can_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.can_ctrlmode = type { i32, i32 }

@IFLA_CAN_CTRLMODE = common dso_local global i64 0, align 8
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@IFLA_CAN_BITTIMING = common dso_local global i64 0, align 8
@IFLA_CAN_DATA_BITTIMING = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @can_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_validate(%struct.nlattr** %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.can_ctrlmode*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %11 = icmp ne %struct.nlattr** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %73

13:                                               ; preds = %3
  %14 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %15 = load i64, i64* @IFLA_CAN_CTRLMODE, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %21 = load i64, i64* @IFLA_CAN_CTRLMODE, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = call %struct.can_ctrlmode* @nla_data(%struct.nlattr* %23)
  store %struct.can_ctrlmode* %24, %struct.can_ctrlmode** %9, align 8
  %25 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %9, align 8
  %26 = getelementptr inbounds %struct.can_ctrlmode, %struct.can_ctrlmode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %9, align 8
  %29 = getelementptr inbounds %struct.can_ctrlmode, %struct.can_ctrlmode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %19, %13
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %39 = load i64, i64* @IFLA_CAN_BITTIMING, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %45 = load i64, i64* @IFLA_CAN_DATA_BITTIMING, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %73

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %55 = load i64, i64* @IFLA_CAN_DATA_BITTIMING, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %64 = load i64, i64* @IFLA_CAN_BITTIMING, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = icmp ne %struct.nlattr* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %73

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %53
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %68, %49, %12
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.can_ctrlmode* @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

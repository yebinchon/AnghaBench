; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_vnd.c_rmnet_vnd_dellink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_vnd.c_rmnet_vnd_dellink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmnet_port = type { i32 }
%struct.rmnet_endpoint = type { i32* }

@RMNET_MAX_LOGICAL_EP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmnet_vnd_dellink(i64 %0, %struct.rmnet_port* %1, %struct.rmnet_endpoint* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.rmnet_port*, align 8
  %7 = alloca %struct.rmnet_endpoint*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.rmnet_port* %1, %struct.rmnet_port** %6, align 8
  store %struct.rmnet_endpoint* %2, %struct.rmnet_endpoint** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @RMNET_MAX_LOGICAL_EP, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %7, align 8
  %13 = getelementptr inbounds %struct.rmnet_endpoint, %struct.rmnet_endpoint* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %26

19:                                               ; preds = %11
  %20 = load %struct.rmnet_endpoint*, %struct.rmnet_endpoint** %7, align 8
  %21 = getelementptr inbounds %struct.rmnet_endpoint, %struct.rmnet_endpoint* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.rmnet_port*, %struct.rmnet_port** %6, align 8
  %23 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

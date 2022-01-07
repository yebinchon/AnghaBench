; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_rq_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_rq_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }
%struct.cq_desc = type { i32 }
%struct.enic = type { i32* }

@VNIC_RQ_RETURN_DESC = common dso_local global i32 0, align 4
@enic_rq_indicate_buf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev*, %struct.cq_desc*, i32, i64, i64, i8*)* @enic_rq_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_rq_service(%struct.vnic_dev* %0, %struct.cq_desc* %1, i32 %2, i64 %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.vnic_dev*, align 8
  %8 = alloca %struct.cq_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.enic*, align 8
  store %struct.vnic_dev* %0, %struct.vnic_dev** %7, align 8
  store %struct.cq_desc* %1, %struct.cq_desc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load %struct.vnic_dev*, %struct.vnic_dev** %7, align 8
  %15 = call %struct.enic* @vnic_dev_priv(%struct.vnic_dev* %14)
  store %struct.enic* %15, %struct.enic** %13, align 8
  %16 = load %struct.enic*, %struct.enic** %13, align 8
  %17 = getelementptr inbounds %struct.enic, %struct.enic* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load %struct.cq_desc*, %struct.cq_desc** %8, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i32, i32* @VNIC_RQ_RETURN_DESC, align 4
  %24 = load i32, i32* @enic_rq_indicate_buf, align 4
  %25 = load i8*, i8** %12, align 8
  %26 = call i32 @vnic_rq_service(i32* %20, %struct.cq_desc* %21, i64 %22, i32 %23, i32 %24, i8* %25)
  ret i32 0
}

declare dso_local %struct.enic* @vnic_dev_priv(%struct.vnic_dev*) #1

declare dso_local i32 @vnic_rq_service(i32*, %struct.cq_desc*, i64, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

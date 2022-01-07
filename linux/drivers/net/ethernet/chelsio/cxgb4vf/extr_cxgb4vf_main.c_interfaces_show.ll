; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_interfaces_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_interfaces_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { %struct.net_device** }
%struct.net_device = type { i32 }
%struct.port_info = type { i32, i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Interface  Port   VIID\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%9s  %4d  %#5x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @interfaces_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interfaces_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.port_info*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %11 = icmp eq i8* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 @seq_puts(%struct.seq_file* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %16, i32 0, i32 0
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = sub i64 %20, 2
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.adapter*, %struct.adapter** %5, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load %struct.net_device**, %struct.net_device*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.net_device*, %struct.net_device** %25, i64 %27
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %7, align 8
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = call %struct.port_info* @netdev_priv(%struct.net_device* %30)
  store %struct.port_info* %31, %struct.port_info** %8, align 8
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.port_info*, %struct.port_info** %8, align 8
  %37 = getelementptr inbounds %struct.port_info, %struct.port_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.port_info*, %struct.port_info** %8, align 8
  %40 = getelementptr inbounds %struct.port_info, %struct.port_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %15, %12
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

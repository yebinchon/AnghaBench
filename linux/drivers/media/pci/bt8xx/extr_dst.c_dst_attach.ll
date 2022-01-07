; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dst_state*, i32 }
%struct.dvb_adapter = type { i32 }

@dst_dvbt_ops = common dso_local global i32 0, align 4
@dst_dvbc_ops = common dso_local global i32 0, align 4
@dst_dvbs_ops = common dso_local global i32 0, align 4
@dst_atsc_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"unknown DST type. please report to the LinuxTV.org DVB mailinglist.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_state* @dst_attach(%struct.dst_state* %0, %struct.dvb_adapter* %1) #0 {
  %3 = alloca %struct.dst_state*, align 8
  %4 = alloca %struct.dst_state*, align 8
  %5 = alloca %struct.dvb_adapter*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %4, align 8
  store %struct.dvb_adapter* %1, %struct.dvb_adapter** %5, align 8
  %6 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %7 = call i64 @dst_probe(%struct.dst_state* %6)
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %11 = call i32 @kfree(%struct.dst_state* %10)
  store %struct.dst_state* null, %struct.dst_state** %3, align 8
  br label %46

12:                                               ; preds = %2
  %13 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %14 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %36 [
    i32 128, label %16
    i32 130, label %21
    i32 129, label %26
    i32 131, label %31
  ]

16:                                               ; preds = %12
  %17 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %18 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @memcpy(i32* %19, i32* @dst_dvbt_ops, i32 4)
  br label %40

21:                                               ; preds = %12
  %22 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %23 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @memcpy(i32* %24, i32* @dst_dvbc_ops, i32 4)
  br label %40

26:                                               ; preds = %12
  %27 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %28 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @memcpy(i32* %29, i32* @dst_dvbs_ops, i32 4)
  br label %40

31:                                               ; preds = %12
  %32 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %33 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @memcpy(i32* %34, i32* @dst_atsc_ops, i32 4)
  br label %40

36:                                               ; preds = %12
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %39 = call i32 @kfree(%struct.dst_state* %38)
  store %struct.dst_state* null, %struct.dst_state** %3, align 8
  br label %46

40:                                               ; preds = %31, %26, %21, %16
  %41 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %42 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  %43 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.dst_state* %41, %struct.dst_state** %44, align 8
  %45 = load %struct.dst_state*, %struct.dst_state** %4, align 8
  store %struct.dst_state* %45, %struct.dst_state** %3, align 8
  br label %46

46:                                               ; preds = %40, %36, %9
  %47 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  ret %struct.dst_state* %47
}

declare dso_local i64 @dst_probe(%struct.dst_state*) #1

declare dso_local i32 @kfree(%struct.dst_state*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_write_to_8820.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_write_to_8820.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }
%struct.ca_msg = type { i32 }

@verbose = common dso_local global i32 0, align 4
@DST_CA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c" DST-CI Command failed.\00", align 1
@DST_CA_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c" Resetting DST.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c" DST-CI Command success.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, %struct.ca_msg*, i32, i32)* @write_to_8820 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_to_8820(%struct.dst_state* %0, %struct.ca_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dst_state*, align 8
  %7 = alloca %struct.ca_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %6, align 8
  store %struct.ca_msg* %1, %struct.ca_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %11 = load %struct.ca_msg*, %struct.ca_msg** %7, align 8
  %12 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.ca_msg*, %struct.ca_msg** %7, align 8
  %16 = getelementptr inbounds %struct.ca_msg, %struct.ca_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @dst_put_ci(%struct.dst_state* %10, i32 %13, i32 %14, i32 %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load i32, i32* @verbose, align 4
  %23 = load i32, i32* @DST_CA_ERROR, align 4
  %24 = call i32 @dprintk(i32 %22, i32 %23, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @verbose, align 4
  %26 = load i32, i32* @DST_CA_NOTICE, align 4
  %27 = call i32 @dprintk(i32 %25, i32 %26, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %29 = call i32 @rdc_reset_state(%struct.dst_state* %28)
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %36

32:                                               ; preds = %4
  %33 = load i32, i32* @verbose, align 4
  %34 = load i32, i32* @DST_CA_NOTICE, align 4
  %35 = call i32 @dprintk(i32 %33, i32 %34, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %21
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @dst_put_ci(%struct.dst_state*, i32, i32, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i32 @rdc_reset_state(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

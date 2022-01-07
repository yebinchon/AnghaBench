; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_dst_check_ca_pmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst_ca.c_dst_check_ca_pmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }
%struct.ca_msg = type { i32 }

@GET_REPLY = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_CA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c" ca_set_pmt.. failed !\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c" Not there yet\00", align 1
@NO_REPLY = common dso_local global i32 0, align 4
@DST_CA_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c" ca_set_pmt.. success !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*, %struct.ca_msg*, %struct.ca_msg*)* @dst_check_ca_pmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_check_ca_pmt(%struct.dst_state* %0, %struct.ca_msg* %1, %struct.ca_msg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_state*, align 8
  %6 = alloca %struct.ca_msg*, align 8
  %7 = alloca %struct.ca_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %5, align 8
  store %struct.ca_msg* %1, %struct.ca_msg** %6, align 8
  store %struct.ca_msg* %2, %struct.ca_msg** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %13 = load %struct.ca_msg*, %struct.ca_msg** %6, align 8
  %14 = load %struct.ca_msg*, %struct.ca_msg** %7, align 8
  %15 = load i32, i32* @GET_REPLY, align 4
  %16 = call i64 @ca_set_pmt(%struct.dst_state* %12, %struct.ca_msg* %13, %struct.ca_msg* %14, i32 1, i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32, i32* @verbose, align 4
  %20 = load i32, i32* @DST_CA_ERROR, align 4
  %21 = call i32 @dprintk(i32 %19, i32 %20, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %49

24:                                               ; preds = %11
  %25 = load i32, i32* @verbose, align 4
  %26 = load i32, i32* @DST_CA_ERROR, align 4
  %27 = call i32 @dprintk(i32 %25, i32 %26, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %3
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %28
  %32 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  %33 = load %struct.ca_msg*, %struct.ca_msg** %6, align 8
  %34 = load %struct.ca_msg*, %struct.ca_msg** %7, align 8
  %35 = load i32, i32* @NO_REPLY, align 4
  %36 = call i64 @ca_set_pmt(%struct.dst_state* %32, %struct.ca_msg* %33, %struct.ca_msg* %34, i32 0, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @verbose, align 4
  %40 = load i32, i32* @DST_CA_ERROR, align 4
  %41 = call i32 @dprintk(i32 %39, i32 %40, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %31
  %45 = load i32, i32* @verbose, align 4
  %46 = load i32, i32* @DST_CA_NOTICE, align 4
  %47 = call i32 @dprintk(i32 %45, i32 %46, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %44, %28
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %38, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @ca_set_pmt(%struct.dst_state*, %struct.ca_msg*, %struct.ca_msg*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

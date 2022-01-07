; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rcmm-decoder.c_rcmm_miscmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rcmm-decoder.c_rcmm_miscmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32 }
%struct.rcmm_dec = type { i32, i8*, i32 }

@RC_PROTO_BIT_RCMM24 = common dso_local global i32 0, align 4
@RC_PROTO_RCMM24 = common dso_local global i32 0, align 4
@STATE_INACTIVE = common dso_local global i8* null, align 8
@RC_PROTO_BIT_RCMM12 = common dso_local global i32 0, align 4
@RC_PROTO_RCMM12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.rcmm_dec*)* @rcmm_miscmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcmm_miscmode(%struct.rc_dev* %0, %struct.rcmm_dec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.rcmm_dec*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store %struct.rcmm_dec* %1, %struct.rcmm_dec** %5, align 8
  %6 = load %struct.rcmm_dec*, %struct.rcmm_dec** %5, align 8
  %7 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %45 [
    i32 24, label %9
    i32 12, label %27
  ]

9:                                                ; preds = %2
  %10 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %11 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RC_PROTO_BIT_RCMM24, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %18 = load i32, i32* @RC_PROTO_RCMM24, align 4
  %19 = load %struct.rcmm_dec*, %struct.rcmm_dec** %5, align 8
  %20 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @rc_keydown(%struct.rc_dev* %17, i32 %18, i32 %21, i32 0)
  %23 = load i8*, i8** @STATE_INACTIVE, align 8
  %24 = load %struct.rcmm_dec*, %struct.rcmm_dec** %5, align 8
  %25 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  store i32 0, i32* %3, align 4
  br label %46

26:                                               ; preds = %9
  store i32 -1, i32* %3, align 4
  br label %46

27:                                               ; preds = %2
  %28 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %29 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RC_PROTO_BIT_RCMM12, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %36 = load i32, i32* @RC_PROTO_RCMM12, align 4
  %37 = load %struct.rcmm_dec*, %struct.rcmm_dec** %5, align 8
  %38 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @rc_keydown(%struct.rc_dev* %35, i32 %36, i32 %39, i32 0)
  %41 = load i8*, i8** @STATE_INACTIVE, align 8
  %42 = load %struct.rcmm_dec*, %struct.rcmm_dec** %5, align 8
  %43 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  store i32 0, i32* %3, align 4
  br label %46

44:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %46

45:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44, %34, %26, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_cdev.c_verify_rsvol_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_cdev.c_verify_rsvol_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64 }
%struct.ubi_rsvol_req = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_rsvol_req*)* @verify_rsvol_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_rsvol_req(%struct.ubi_device* %0, %struct.ubi_rsvol_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_rsvol_req*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_rsvol_req* %1, %struct.ubi_rsvol_req** %5, align 8
  %6 = load %struct.ubi_rsvol_req*, %struct.ubi_rsvol_req** %5, align 8
  %7 = getelementptr inbounds %struct.ubi_rsvol_req, %struct.ubi_rsvol_req* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sle i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %30

13:                                               ; preds = %2
  %14 = load %struct.ubi_rsvol_req*, %struct.ubi_rsvol_req** %5, align 8
  %15 = getelementptr inbounds %struct.ubi_rsvol_req, %struct.ubi_rsvol_req* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load %struct.ubi_rsvol_req*, %struct.ubi_rsvol_req** %5, align 8
  %20 = getelementptr inbounds %struct.ubi_rsvol_req, %struct.ubi_rsvol_req* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %23 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18, %13
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %26, %10
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

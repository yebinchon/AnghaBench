; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_cam_state_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_cam_state_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_mgmt_cam_state = type { i32*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_mgmt_cam_state*, i8*)* @octeon_mgmt_cam_state_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_mgmt_cam_state_add(%struct.octeon_mgmt_cam_state* %0, i8* %1) #0 {
  %3 = alloca %struct.octeon_mgmt_cam_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.octeon_mgmt_cam_state* %0, %struct.octeon_mgmt_cam_state** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %29, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 6
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = load %struct.octeon_mgmt_cam_state*, %struct.octeon_mgmt_cam_state** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_mgmt_cam_state, %struct.octeon_mgmt_cam_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 8, %18
  %20 = shl i32 %15, %19
  %21 = load %struct.octeon_mgmt_cam_state*, %struct.octeon_mgmt_cam_state** %3, align 8
  %22 = getelementptr inbounds %struct.octeon_mgmt_cam_state, %struct.octeon_mgmt_cam_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %20
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %9
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %6

32:                                               ; preds = %6
  %33 = load %struct.octeon_mgmt_cam_state*, %struct.octeon_mgmt_cam_state** %3, align 8
  %34 = getelementptr inbounds %struct.octeon_mgmt_cam_state, %struct.octeon_mgmt_cam_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = zext i32 %35 to i64
  %37 = shl i64 1, %36
  %38 = load %struct.octeon_mgmt_cam_state*, %struct.octeon_mgmt_cam_state** %3, align 8
  %39 = getelementptr inbounds %struct.octeon_mgmt_cam_state, %struct.octeon_mgmt_cam_state* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.octeon_mgmt_cam_state*, %struct.octeon_mgmt_cam_state** %3, align 8
  %43 = getelementptr inbounds %struct.octeon_mgmt_cam_state, %struct.octeon_mgmt_cam_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

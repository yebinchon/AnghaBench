; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_patch_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_patch_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@OCP_PHY_PATCH_CMD = common dso_local global i32 0, align 4
@PATCH_REQUEST = common dso_local global i32 0, align 4
@OCP_PHY_PATCH_STAT = common dso_local global i32 0, align 4
@PATCH_READY = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"patch request fail\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*, i32)* @r8153_patch_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8153_patch_request(%struct.r8152* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8152*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.r8152*, %struct.r8152** %4, align 8
  %9 = load i32, i32* @OCP_PHY_PATCH_CMD, align 4
  %10 = call i32 @ocp_reg_read(%struct.r8152* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @PATCH_REQUEST, align 4
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  br label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @PATCH_REQUEST, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = load %struct.r8152*, %struct.r8152** %4, align 8
  %24 = load i32, i32* @OCP_PHY_PATCH_CMD, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ocp_reg_write(%struct.r8152* %23, i32 %24, i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %45, %22
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 5000
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ]
  br i1 %34, label %35, label %48

35:                                               ; preds = %33
  %36 = call i32 @usleep_range(i32 1000, i32 2000)
  %37 = load %struct.r8152*, %struct.r8152** %4, align 8
  %38 = load i32, i32* @OCP_PHY_PATCH_STAT, align 4
  %39 = call i32 @ocp_reg_read(%struct.r8152* %37, i32 %38)
  %40 = load i32, i32* @PATCH_READY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %48

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %27

48:                                               ; preds = %43, %33
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load %struct.r8152*, %struct.r8152** %4, align 8
  %53 = load i32, i32* @OCP_PHY_PATCH_STAT, align 4
  %54 = call i32 @ocp_reg_read(%struct.r8152* %52, i32 %53)
  %55 = load i32, i32* @PATCH_READY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %51
  %59 = load %struct.r8152*, %struct.r8152** %4, align 8
  %60 = load i32, i32* @drv, align 4
  %61 = load %struct.r8152*, %struct.r8152** %4, align 8
  %62 = getelementptr inbounds %struct.r8152, %struct.r8152* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @netif_err(%struct.r8152* %59, i32 %60, i32 %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.r8152*, %struct.r8152** %4, align 8
  %66 = call i32 @r8153_patch_request(%struct.r8152* %65, i32 0)
  %67 = load i32, i32* @ETIME, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %51, %48
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @ocp_reg_read(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_reg_write(%struct.r8152*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netif_err(%struct.r8152*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

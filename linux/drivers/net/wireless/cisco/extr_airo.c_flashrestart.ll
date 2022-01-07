; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_flashrestart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_flashrestart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32*, i32 }
%struct.net_device = type { i32 }

@FLAG_FLASHING = common dso_local global i32 0, align 4
@FLAG_MPI = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@MAX_FIDS = common dso_local global i32 0, align 4
@AIRO_DEF_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, %struct.net_device*)* @flashrestart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashrestart(%struct.airo_info* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.airo_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = call i32 @ssleep(i32 1)
  %9 = load i32, i32* @FLAG_FLASHING, align 4
  %10 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %11 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %10, i32 0, i32 1
  %12 = call i32 @clear_bit(i32 %9, i32* %11)
  %13 = load i32, i32* @FLAG_MPI, align 4
  %14 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %15 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %20 = call i32 @mpi_init_descriptors(%struct.airo_info* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %65

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @setup_card(%struct.airo_info* %28, i32 %31, i32 1)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @FLAG_MPI, align 4
  %34 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %35 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %34, i32 0, i32 1
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %62, label %38

38:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MAX_FIDS, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %45 = load i32, i32* @AIRO_DEF_MTU, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MAX_FIDS, align 4
  %48 = sdiv i32 %47, 2
  %49 = icmp sge i32 %46, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @transmit_allocate(%struct.airo_info* %44, i32 %45, i32 %50)
  %52 = load %struct.airo_info*, %struct.airo_info** %4, align 8
  %53 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  br label %58

58:                                               ; preds = %43
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %39

61:                                               ; preds = %39
  br label %62

62:                                               ; preds = %61, %27
  %63 = call i32 @ssleep(i32 1)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %24
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mpi_init_descriptors(%struct.airo_info*) #1

declare dso_local i32 @setup_card(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @transmit_allocate(%struct.airo_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

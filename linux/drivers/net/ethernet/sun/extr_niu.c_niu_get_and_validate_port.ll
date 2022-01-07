; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_and_validate_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_and_validate_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.niu_parent* }
%struct.niu_parent = type { i32, i64 }

@NIU_FLAGS_XMAC = common dso_local global i32 0, align 4
@PLAT_TYPE_NIU = common dso_local global i64 0, align 8
@ESPC_NUM_PORTS_MACS = common dso_local global i32 0, align 4
@ESPC_NUM_PORTS_MACS_VAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_get_and_validate_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_get_and_validate_port(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_parent*, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  %5 = load %struct.niu*, %struct.niu** %3, align 8
  %6 = getelementptr inbounds %struct.niu, %struct.niu* %5, i32 0, i32 2
  %7 = load %struct.niu_parent*, %struct.niu_parent** %6, align 8
  store %struct.niu_parent* %7, %struct.niu_parent** %4, align 8
  %8 = load %struct.niu*, %struct.niu** %3, align 8
  %9 = getelementptr inbounds %struct.niu, %struct.niu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %14 = load %struct.niu*, %struct.niu** %3, align 8
  %15 = getelementptr inbounds %struct.niu, %struct.niu* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %20 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %58, label %23

23:                                               ; preds = %18
  %24 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %25 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %31 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %30, i32 0, i32 0
  store i32 2, i32* %31, align 8
  br label %57

32:                                               ; preds = %23
  %33 = load %struct.niu*, %struct.niu** %3, align 8
  %34 = call i32 @niu_pci_vpd_get_nports(%struct.niu* %33)
  %35 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %36 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %38 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ESPC_NUM_PORTS_MACS, align 4
  %43 = call i32 @nr64(i32 %42)
  %44 = load i32, i32* @ESPC_NUM_PORTS_MACS_VAL, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %47 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %49 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %54 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %53, i32 0, i32 0
  store i32 4, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %41
  br label %56

56:                                               ; preds = %55, %32
  br label %57

57:                                               ; preds = %56, %29
  br label %58

58:                                               ; preds = %57, %18
  %59 = load %struct.niu*, %struct.niu** %3, align 8
  %60 = getelementptr inbounds %struct.niu, %struct.niu* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %63 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @niu_pci_vpd_get_nports(%struct.niu*) #1

declare dso_local i32 @nr64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

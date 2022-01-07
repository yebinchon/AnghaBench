; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_config_host_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_config_host_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ena_admin_host_info* }
%struct.ena_admin_host_info = type { i32, i8, i32, i32, i32, i64, i32, i32, i32 }
%struct.pci_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Cannot allocate host info\0A\00", align 1
@ENA_ADMIN_OS_LINUX = common dso_local global i32 0, align 4
@LINUX_VERSION_CODE = common dso_local global i32 0, align 4
@DRV_MODULE_VER_MAJOR = common dso_local global i8 0, align 1
@DRV_MODULE_VER_MINOR = common dso_local global i8 0, align 1
@ENA_ADMIN_HOST_INFO_MINOR_SHIFT = common dso_local global i8 0, align 1
@DRV_MODULE_VER_SUBMINOR = common dso_local global i8 0, align 1
@ENA_ADMIN_HOST_INFO_SUB_MINOR_SHIFT = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@ENA_ADMIN_HOST_INFO_MODULE_TYPE_SHIFT = common dso_local global i8 0, align 1
@ENA_ADMIN_HOST_INFO_INTERRUPT_MODERATION_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot set host attributes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_com_dev*, %struct.pci_dev*)* @ena_config_host_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_config_host_info(%struct.ena_com_dev* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ena_admin_host_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %7 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %8 = call i32 @ena_com_allocate_host_info(%struct.ena_com_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %99

13:                                               ; preds = %2
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %16, align 8
  store %struct.ena_admin_host_info* %17, %struct.ena_admin_host_info** %5, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %23, %26
  %28 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %29 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @ENA_ADMIN_OS_LINUX, align 4
  %31 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %32 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @LINUX_VERSION_CODE, align 4
  %34 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %35 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %37 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_6__* (...) @utsname()
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strlcpy(i32 %38, i32 %41, i32 3)
  %43 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %44 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %46 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_6__* (...) @utsname()
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strncpy(i32 %47, i32 %50, i32 3)
  %52 = load i8, i8* @DRV_MODULE_VER_MAJOR, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* @DRV_MODULE_VER_MINOR, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @ENA_ADMIN_HOST_INFO_MINOR_SHIFT, align 1
  %57 = sext i8 %56 to i32
  %58 = shl i32 %55, %57
  %59 = or i32 %53, %58
  %60 = load i8, i8* @DRV_MODULE_VER_SUBMINOR, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* @ENA_ADMIN_HOST_INFO_SUB_MINOR_SHIFT, align 1
  %63 = sext i8 %62 to i32
  %64 = shl i32 %61, %63
  %65 = or i32 %59, %64
  %66 = load i8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), align 1
  %67 = sext i8 %66 to i32
  %68 = load i8, i8* @ENA_ADMIN_HOST_INFO_MODULE_TYPE_SHIFT, align 1
  %69 = sext i8 %68 to i32
  %70 = shl i32 %67, %69
  %71 = or i32 %65, %70
  %72 = trunc i32 %71 to i8
  %73 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %74 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %73, i32 0, i32 1
  store i8 %72, i8* %74, align 4
  %75 = call i32 (...) @num_online_cpus()
  %76 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %77 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @ENA_ADMIN_HOST_INFO_INTERRUPT_MODERATION_MASK, align 4
  %79 = load %struct.ena_admin_host_info*, %struct.ena_admin_host_info** %5, align 8
  %80 = getelementptr inbounds %struct.ena_admin_host_info, %struct.ena_admin_host_info* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %82 = call i32 @ena_com_set_host_attributes(%struct.ena_com_dev* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %13
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %94

92:                                               ; preds = %85
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %90
  br label %96

95:                                               ; preds = %13
  br label %99

96:                                               ; preds = %94
  %97 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %98 = call i32 @ena_com_delete_host_info(%struct.ena_com_dev* %97)
  br label %99

99:                                               ; preds = %96, %95, %11
  ret void
}

declare dso_local i32 @ena_com_allocate_host_info(%struct.ena_com_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @utsname(...) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @ena_com_set_host_attributes(%struct.ena_com_dev*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @ena_com_delete_host_info(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

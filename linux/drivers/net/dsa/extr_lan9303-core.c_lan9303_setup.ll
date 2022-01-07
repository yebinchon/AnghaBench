; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.lan9303* }
%struct.lan9303 = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"port 0 is not the CPU port\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to setup port tagging %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to separate ports %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to re-enable switching %d\0A\00", align 1
@LAN9303_SWE_GLB_INGRESS_CFG = common dso_local global i32 0, align 4
@LAN9303_SWE_GLB_INGR_IGMP_TRAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to setup IGMP trap %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @lan9303_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_setup(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.lan9303*, align 8
  %5 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %6 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %7 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %6, i32 0, i32 0
  %8 = load %struct.lan9303*, %struct.lan9303** %7, align 8
  store %struct.lan9303* %8, %struct.lan9303** %4, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %10 = call i32 @dsa_is_cpu_port(%struct.dsa_switch* %9, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %14 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @dev_err(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %71

19:                                               ; preds = %1
  %20 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %21 = call i32 @lan9303_setup_tagging(%struct.lan9303* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %26 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %32 = call i32 @lan9303_separate_ports(%struct.lan9303* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %37 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %43 = call i32 @lan9303_enable_processing_port(%struct.lan9303* %42, i32 0)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %48 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %54 = load i32, i32* @LAN9303_SWE_GLB_INGRESS_CFG, align 4
  %55 = load i32, i32* @LAN9303_SWE_GLB_INGR_IGMP_TRAP, align 4
  %56 = call i32 @LAN9303_SWE_GLB_INGR_IGMP_PORT(i32 0)
  %57 = or i32 %55, %56
  %58 = call i32 @LAN9303_SWE_GLB_INGR_IGMP_PORT(i32 1)
  %59 = call i32 @LAN9303_SWE_GLB_INGR_IGMP_PORT(i32 2)
  %60 = or i32 %58, %59
  %61 = call i32 @lan9303_write_switch_reg_mask(%struct.lan9303* %53, i32 %54, i32 %57, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load %struct.lan9303*, %struct.lan9303** %4, align 8
  %66 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (i32, i8*, ...) @dev_err(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %64, %52
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %12
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @lan9303_setup_tagging(%struct.lan9303*) #1

declare dso_local i32 @lan9303_separate_ports(%struct.lan9303*) #1

declare dso_local i32 @lan9303_enable_processing_port(%struct.lan9303*, i32) #1

declare dso_local i32 @lan9303_write_switch_reg_mask(%struct.lan9303*, i32, i32, i32) #1

declare dso_local i32 @LAN9303_SWE_GLB_INGR_IGMP_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

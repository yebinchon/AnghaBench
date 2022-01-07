; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_static_config_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_static_config_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sja1105_dt_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, %struct.sja1105_dt_port*)* @sja1105_static_config_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_static_config_load(%struct.sja1105_private* %0, %struct.sja1105_dt_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sja1105_private*, align 8
  %5 = alloca %struct.sja1105_dt_port*, align 8
  %6 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %4, align 8
  store %struct.sja1105_dt_port* %1, %struct.sja1105_dt_port** %5, align 8
  %7 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %8 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %7, i32 0, i32 1
  %9 = call i32 @sja1105_static_config_free(i32* %8)
  %10 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %11 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %10, i32 0, i32 1
  %12 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %13 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %18 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sja1105_static_config_init(i32* %11, i32 %16, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %101

27:                                               ; preds = %2
  %28 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %29 = call i32 @sja1105_init_mac_settings(%struct.sja1105_private* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %101

34:                                               ; preds = %27
  %35 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %36 = load %struct.sja1105_dt_port*, %struct.sja1105_dt_port** %5, align 8
  %37 = call i32 @sja1105_init_mii_settings(%struct.sja1105_private* %35, %struct.sja1105_dt_port* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %101

42:                                               ; preds = %34
  %43 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %44 = call i32 @sja1105_init_static_fdb(%struct.sja1105_private* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %101

49:                                               ; preds = %42
  %50 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %51 = call i32 @sja1105_init_static_vlan(%struct.sja1105_private* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %101

56:                                               ; preds = %49
  %57 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %58 = call i32 @sja1105_init_l2_lookup_params(%struct.sja1105_private* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %101

63:                                               ; preds = %56
  %64 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %65 = call i32 @sja1105_init_l2_forwarding(%struct.sja1105_private* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %101

70:                                               ; preds = %63
  %71 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %72 = call i32 @sja1105_init_l2_forwarding_params(%struct.sja1105_private* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %101

77:                                               ; preds = %70
  %78 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %79 = call i32 @sja1105_init_l2_policing(%struct.sja1105_private* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %101

84:                                               ; preds = %77
  %85 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %86 = call i32 @sja1105_init_general_params(%struct.sja1105_private* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %101

91:                                               ; preds = %84
  %92 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %93 = call i32 @sja1105_init_avb_params(%struct.sja1105_private* %92, i32 0)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %101

98:                                               ; preds = %91
  %99 = load %struct.sja1105_private*, %struct.sja1105_private** %4, align 8
  %100 = call i32 @sja1105_static_config_upload(%struct.sja1105_private* %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %98, %96, %89, %82, %75, %68, %61, %54, %47, %40, %32, %25
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @sja1105_static_config_free(i32*) #1

declare dso_local i32 @sja1105_static_config_init(i32*, i32, i32) #1

declare dso_local i32 @sja1105_init_mac_settings(%struct.sja1105_private*) #1

declare dso_local i32 @sja1105_init_mii_settings(%struct.sja1105_private*, %struct.sja1105_dt_port*) #1

declare dso_local i32 @sja1105_init_static_fdb(%struct.sja1105_private*) #1

declare dso_local i32 @sja1105_init_static_vlan(%struct.sja1105_private*) #1

declare dso_local i32 @sja1105_init_l2_lookup_params(%struct.sja1105_private*) #1

declare dso_local i32 @sja1105_init_l2_forwarding(%struct.sja1105_private*) #1

declare dso_local i32 @sja1105_init_l2_forwarding_params(%struct.sja1105_private*) #1

declare dso_local i32 @sja1105_init_l2_policing(%struct.sja1105_private*) #1

declare dso_local i32 @sja1105_init_general_params(%struct.sja1105_private*) #1

declare dso_local i32 @sja1105_init_avb_params(%struct.sja1105_private*, i32) #1

declare dso_local i32 @sja1105_static_config_upload(%struct.sja1105_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

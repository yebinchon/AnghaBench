; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_set_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_set_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_port = type { i32, i32, i32, i32, %struct.ksz_hw* }
%struct.ksz_hw = type { i32 }

@KS884X_PORT_CTRL_4_OFFSET = common dso_local global i32 0, align 4
@KS884X_PORT_STATUS_OFFSET = common dso_local global i32 0, align 4
@PORT_STATUS_LINK_GOOD = common dso_local global i32 0, align 4
@PORT_AUTO_NEG_ENABLE = common dso_local global i32 0, align 4
@PORT_AUTO_NEG_100BTX_FD = common dso_local global i32 0, align 4
@PORT_AUTO_NEG_100BTX = common dso_local global i32 0, align 4
@PORT_AUTO_NEG_10BT_FD = common dso_local global i32 0, align 4
@PORT_AUTO_NEG_10BT = common dso_local global i32 0, align 4
@PORT_AUTO_NEG_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_port*)* @port_set_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_set_link_speed(%struct.ksz_port* %0) #0 {
  %2 = alloca %struct.ksz_port*, align 8
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ksz_port* %0, %struct.ksz_port** %2, align 8
  %9 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %10 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %9, i32 0, i32 4
  %11 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  store %struct.ksz_hw* %11, %struct.ksz_hw** %3, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %13 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %126, %1
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %18 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %131

21:                                               ; preds = %15
  %22 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @KS884X_PORT_CTRL_4_OFFSET, align 4
  %25 = call i32 @port_r16(%struct.ksz_hw* %22, i32 %23, i32 %24, i32* %4)
  %26 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @KS884X_PORT_STATUS_OFFSET, align 4
  %29 = call i32 @port_r8(%struct.ksz_hw* %26, i32 %27, i32 %28, i32* %6)
  store i32 0, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @PORT_STATUS_LINK_GOOD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %21
  %37 = load i32, i32* @PORT_AUTO_NEG_ENABLE, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @advertised_flow_ctrl(%struct.ksz_port* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @PORT_AUTO_NEG_100BTX_FD, align 4
  %44 = load i32, i32* @PORT_AUTO_NEG_100BTX, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @PORT_AUTO_NEG_10BT_FD, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @PORT_AUTO_NEG_10BT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %53 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %36
  %57 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %58 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %112

61:                                               ; preds = %56, %36
  %62 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %63 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 10, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32, i32* @PORT_AUTO_NEG_100BTX_FD, align 4
  %68 = load i32, i32* @PORT_AUTO_NEG_100BTX, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %4, align 4
  br label %86

73:                                               ; preds = %61
  %74 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %75 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 100, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* @PORT_AUTO_NEG_10BT_FD, align 4
  %80 = load i32, i32* @PORT_AUTO_NEG_10BT, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %78, %73
  br label %86

86:                                               ; preds = %85, %66
  %87 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %88 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 1, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* @PORT_AUTO_NEG_100BTX_FD, align 4
  %93 = load i32, i32* @PORT_AUTO_NEG_10BT_FD, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %4, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %4, align 4
  br label %111

98:                                               ; preds = %86
  %99 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %100 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 2, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i32, i32* @PORT_AUTO_NEG_100BTX, align 4
  %105 = load i32, i32* @PORT_AUTO_NEG_10BT, align 4
  %106 = or i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %4, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %103, %98
  br label %111

111:                                              ; preds = %110, %91
  br label %112

112:                                              ; preds = %111, %56
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load i32, i32* @PORT_AUTO_NEG_RESTART, align 4
  %118 = load i32, i32* %4, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %4, align 4
  %120 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @KS884X_PORT_CTRL_4_OFFSET, align 4
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @port_w16(%struct.ksz_hw* %120, i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %116, %112
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %15

131:                                              ; preds = %15
  ret void
}

declare dso_local i32 @port_r16(%struct.ksz_hw*, i32, i32, i32*) #1

declare dso_local i32 @port_r8(%struct.ksz_hw*, i32, i32, i32*) #1

declare dso_local i32 @advertised_flow_ctrl(%struct.ksz_port*, i32) #1

declare dso_local i32 @port_w16(%struct.ksz_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

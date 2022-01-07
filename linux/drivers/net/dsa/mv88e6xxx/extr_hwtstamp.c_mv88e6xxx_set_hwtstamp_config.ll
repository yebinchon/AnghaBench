; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_set_hwtstamp_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_hwtstamp.c_mv88e6xxx_set_hwtstamp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, i32, %struct.mv88e6xxx_port_hwtstamp*, %struct.TYPE_4__* }
%struct.mv88e6xxx_port_hwtstamp = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mv88e6xxx_ptp_ops* }
%struct.mv88e6xxx_ptp_ops = type { i32, i32 (%struct.mv88e6xxx_chip.0*)*, i32 (%struct.mv88e6xxx_chip.1*, i32)*, i32 (%struct.mv88e6xxx_chip.2*, i32)*, i32 (%struct.mv88e6xxx_chip.3*)* }
%struct.mv88e6xxx_chip.0 = type opaque
%struct.mv88e6xxx_chip.1 = type opaque
%struct.mv88e6xxx_chip.2 = type opaque
%struct.mv88e6xxx_chip.3 = type opaque
%struct.hwtstamp_config = type { i32, i32, i64 }

@MV88E6XXX_HWTSTAMP_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported rx_filter %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, %struct.hwtstamp_config*)* @mv88e6xxx_set_hwtstamp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_set_hwtstamp_config(%struct.mv88e6xxx_chip* %0, i32 %1, %struct.hwtstamp_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hwtstamp_config*, align 8
  %8 = alloca %struct.mv88e6xxx_ptp_ops*, align 8
  %9 = alloca %struct.mv88e6xxx_port_hwtstamp*, align 8
  %10 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hwtstamp_config* %2, %struct.hwtstamp_config** %7, align 8
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %12 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %16, align 8
  store %struct.mv88e6xxx_ptp_ops* %17, %struct.mv88e6xxx_ptp_ops** %8, align 8
  %18 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %19 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %18, i32 0, i32 2
  %20 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %20, i64 %22
  store %struct.mv88e6xxx_port_hwtstamp* %23, %struct.mv88e6xxx_port_hwtstamp** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* @MV88E6XXX_HWTSTAMP_ENABLED, align 4
  %25 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %9, align 8
  %26 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %25, i32 0, i32 0
  %27 = call i32 @clear_bit_unlock(i32 %24, i32* %26)
  %28 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %7, align 8
  %29 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %166

35:                                               ; preds = %3
  %36 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %7, align 8
  %37 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %41 [
    i32 129, label %39
    i32 128, label %40
  ]

39:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %44

40:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ERANGE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %166

44:                                               ; preds = %40, %39
  %45 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %7, align 8
  %46 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %8, align 8
  %50 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %44
  %55 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %7, align 8
  %56 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %55, i32 0, i32 1
  store i32 139, i32* %56, align 4
  %57 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %58 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %7, align 8
  %61 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_dbg(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @ERANGE, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %166

66:                                               ; preds = %44
  %67 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %7, align 8
  %68 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %75 [
    i32 139, label %70
    i32 132, label %71
    i32 131, label %71
    i32 133, label %71
    i32 135, label %71
    i32 134, label %71
    i32 136, label %71
    i32 137, label %71
    i32 130, label %71
    i32 138, label %71
    i32 140, label %74
  ]

70:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  br label %80

71:                                               ; preds = %66, %66, %66, %66, %66, %66, %66, %66, %66
  %72 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %7, align 8
  %73 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %72, i32 0, i32 1
  store i32 137, i32* %73, align 4
  br label %80

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %66, %74
  %76 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %7, align 8
  %77 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %76, i32 0, i32 1
  store i32 139, i32* %77, align 4
  %78 = load i32, i32* @ERANGE, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %166

80:                                               ; preds = %71, %70
  %81 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %82 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %81)
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %120

85:                                               ; preds = %80
  %86 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %87 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %91 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %106

94:                                               ; preds = %85
  %95 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %8, align 8
  %96 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %95, i32 0, i32 4
  %97 = load i32 (%struct.mv88e6xxx_chip.3*)*, i32 (%struct.mv88e6xxx_chip.3*)** %96, align 8
  %98 = icmp ne i32 (%struct.mv88e6xxx_chip.3*)* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %8, align 8
  %101 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %100, i32 0, i32 4
  %102 = load i32 (%struct.mv88e6xxx_chip.3*)*, i32 (%struct.mv88e6xxx_chip.3*)** %101, align 8
  %103 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %104 = bitcast %struct.mv88e6xxx_chip* %103 to %struct.mv88e6xxx_chip.3*
  %105 = call i32 %102(%struct.mv88e6xxx_chip.3* %104)
  br label %106

106:                                              ; preds = %99, %94, %85
  %107 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %8, align 8
  %108 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %107, i32 0, i32 3
  %109 = load i32 (%struct.mv88e6xxx_chip.2*, i32)*, i32 (%struct.mv88e6xxx_chip.2*, i32)** %108, align 8
  %110 = icmp ne i32 (%struct.mv88e6xxx_chip.2*, i32)* %109, null
  br i1 %110, label %111, label %119

111:                                              ; preds = %106
  %112 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %8, align 8
  %113 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %112, i32 0, i32 3
  %114 = load i32 (%struct.mv88e6xxx_chip.2*, i32)*, i32 (%struct.mv88e6xxx_chip.2*, i32)** %113, align 8
  %115 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %116 = bitcast %struct.mv88e6xxx_chip* %115 to %struct.mv88e6xxx_chip.2*
  %117 = load i32, i32* %6, align 4
  %118 = call i32 %114(%struct.mv88e6xxx_chip.2* %116, i32 %117)
  br label %119

119:                                              ; preds = %111, %106
  br label %155

120:                                              ; preds = %80
  %121 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %8, align 8
  %122 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %121, i32 0, i32 2
  %123 = load i32 (%struct.mv88e6xxx_chip.1*, i32)*, i32 (%struct.mv88e6xxx_chip.1*, i32)** %122, align 8
  %124 = icmp ne i32 (%struct.mv88e6xxx_chip.1*, i32)* %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %8, align 8
  %127 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %126, i32 0, i32 2
  %128 = load i32 (%struct.mv88e6xxx_chip.1*, i32)*, i32 (%struct.mv88e6xxx_chip.1*, i32)** %127, align 8
  %129 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %130 = bitcast %struct.mv88e6xxx_chip* %129 to %struct.mv88e6xxx_chip.1*
  %131 = load i32, i32* %6, align 4
  %132 = call i32 %128(%struct.mv88e6xxx_chip.1* %130, i32 %131)
  br label %133

133:                                              ; preds = %125, %120
  %134 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %135 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  %138 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %139 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %133
  %143 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %8, align 8
  %144 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %143, i32 0, i32 1
  %145 = load i32 (%struct.mv88e6xxx_chip.0*)*, i32 (%struct.mv88e6xxx_chip.0*)** %144, align 8
  %146 = icmp ne i32 (%struct.mv88e6xxx_chip.0*)* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %142
  %148 = load %struct.mv88e6xxx_ptp_ops*, %struct.mv88e6xxx_ptp_ops** %8, align 8
  %149 = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, %struct.mv88e6xxx_ptp_ops* %148, i32 0, i32 1
  %150 = load i32 (%struct.mv88e6xxx_chip.0*)*, i32 (%struct.mv88e6xxx_chip.0*)** %149, align 8
  %151 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %152 = bitcast %struct.mv88e6xxx_chip* %151 to %struct.mv88e6xxx_chip.0*
  %153 = call i32 %150(%struct.mv88e6xxx_chip.0* %152)
  br label %154

154:                                              ; preds = %147, %142, %133
  br label %155

155:                                              ; preds = %154, %119
  %156 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %157 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %156)
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %155
  %161 = load i32, i32* @MV88E6XXX_HWTSTAMP_ENABLED, align 4
  %162 = load %struct.mv88e6xxx_port_hwtstamp*, %struct.mv88e6xxx_port_hwtstamp** %9, align 8
  %163 = getelementptr inbounds %struct.mv88e6xxx_port_hwtstamp, %struct.mv88e6xxx_port_hwtstamp* %162, i32 0, i32 0
  %164 = call i32 @set_bit(i32 %161, i32* %163)
  br label %165

165:                                              ; preds = %160, %155
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %165, %75, %54, %41, %32
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

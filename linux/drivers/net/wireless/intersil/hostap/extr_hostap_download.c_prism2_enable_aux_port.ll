; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_download.c_prism2_enable_aux_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_download.c_prism2_enable_aux_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hostap_interface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@DEBUG_EXTRA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s: no PRI f/w - assuming Aux port is already enabled\0A\00", align 1
@HFA384X_CMD_BUSY_TIMEOUT = common dso_local global i32 0, align 4
@HFA384X_CMD_OFF = common dso_local global i32 0, align 4
@HFA384X_CMD_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%s: prism2_enable_aux_port - timeout - reg=0x%04x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@HFA384X_CONTROL_OFF = common dso_local global i32 0, align 4
@HFA384X_AUX_MAGIC0 = common dso_local global i32 0, align 4
@HFA384X_PARAM0_OFF = common dso_local global i32 0, align 4
@HFA384X_AUX_MAGIC1 = common dso_local global i32 0, align 4
@HFA384X_PARAM1_OFF = common dso_local global i32 0, align 4
@HFA384X_AUX_MAGIC2 = common dso_local global i32 0, align 4
@HFA384X_PARAM2_OFF = common dso_local global i32 0, align 4
@HFA384X_AUX_PORT_MASK = common dso_local global i32 0, align 4
@HFA384X_AUX_PORT_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"prism2_enable_aux_port: was not disabled!?\0A\00", align 1
@HFA384X_AUX_PORT_ENABLE = common dso_local global i32 0, align 4
@HFA384X_AUX_PORT_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"prism2_enable_aux_port: was not enabled!?\0A\00", align 1
@HFA384X_AUX_PORT_DISABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"prism2_enable_aux_port(%d) timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @prism2_enable_aux_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_enable_aux_port(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.hostap_interface*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.hostap_interface* @netdev_priv(%struct.net_device* %13)
  store %struct.hostap_interface* %14, %struct.hostap_interface** %11, align 8
  %15 = load %struct.hostap_interface*, %struct.hostap_interface** %11, align 8
  %16 = getelementptr inbounds %struct.hostap_interface, %struct.hostap_interface* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %12, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* @DEBUG_EXTRA2, align 4
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PDEBUG(i32 %26, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %22
  store i32 0, i32* %3, align 4
  br label %167

32:                                               ; preds = %2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load i32, i32* @HFA384X_CMD_BUSY_TIMEOUT, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %49, %32
  %39 = load i32, i32* @HFA384X_CMD_OFF, align 4
  %40 = call i32 @HFA384X_INW(i32 %39)
  %41 = load i32, i32* @HFA384X_CMD_BUSY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 0
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i1 [ false, %38 ], [ %46, %44 ]
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %9, align 4
  %52 = call i32 @udelay(i32 1)
  br label %38

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i32, i32* @HFA384X_CMD_OFF, align 4
  %58 = call i32 @HFA384X_INW(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %167

70:                                               ; preds = %53
  %71 = load i32, i32* @HFA384X_CONTROL_OFF, align 4
  %72 = call i32 @HFA384X_INW(i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load i32, i32* @HFA384X_AUX_MAGIC0, align 4
  %77 = load i32, i32* @HFA384X_PARAM0_OFF, align 4
  %78 = call i32 @HFA384X_OUTW(i32 %76, i32 %77)
  %79 = load i32, i32* @HFA384X_AUX_MAGIC1, align 4
  %80 = load i32, i32* @HFA384X_PARAM1_OFF, align 4
  %81 = call i32 @HFA384X_OUTW(i32 %79, i32 %80)
  %82 = load i32, i32* @HFA384X_AUX_MAGIC2, align 4
  %83 = load i32, i32* @HFA384X_PARAM2_OFF, align 4
  %84 = call i32 @HFA384X_OUTW(i32 %82, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @HFA384X_AUX_PORT_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @HFA384X_AUX_PORT_DISABLED, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %75
  %91 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %75
  %93 = load i32, i32* @HFA384X_AUX_PORT_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* @HFA384X_AUX_PORT_ENABLE, align 4
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %122

100:                                              ; preds = %70
  %101 = load i32, i32* @HFA384X_PARAM0_OFF, align 4
  %102 = call i32 @HFA384X_OUTW(i32 0, i32 %101)
  %103 = load i32, i32* @HFA384X_PARAM1_OFF, align 4
  %104 = call i32 @HFA384X_OUTW(i32 0, i32 %103)
  %105 = load i32, i32* @HFA384X_PARAM2_OFF, align 4
  %106 = call i32 @HFA384X_OUTW(i32 0, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @HFA384X_AUX_PORT_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @HFA384X_AUX_PORT_ENABLED, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %100
  %113 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %100
  %115 = load i32, i32* @HFA384X_AUX_PORT_MASK, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* @HFA384X_AUX_PORT_DISABLE, align 4
  %120 = load i32, i32* %6, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %114, %92
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @HFA384X_CONTROL_OFF, align 4
  %125 = call i32 @HFA384X_OUTW(i32 %123, i32 %124)
  %126 = call i32 @udelay(i32 5)
  store i32 10000, i32* %8, align 4
  br label %127

127:                                              ; preds = %150, %122
  %128 = load i32, i32* %8, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %154

130:                                              ; preds = %127
  %131 = load i32, i32* @HFA384X_CONTROL_OFF, align 4
  %132 = call i32 @HFA384X_INW(i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* @HFA384X_AUX_PORT_MASK, align 4
  %134 = load i32, i32* %6, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @HFA384X_AUX_PORT_ENABLED, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %149, label %142

142:                                              ; preds = %138, %130
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @HFA384X_AUX_PORT_DISABLED, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %138
  br label %154

150:                                              ; preds = %145, %142
  %151 = call i32 @udelay(i32 10)
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %8, align 4
  br label %127

154:                                              ; preds = %149, %127
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i64, i64* %10, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %154
  %162 = load i32, i32* %5, align 4
  %163 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @ETIMEDOUT, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %167

166:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %161, %56, %31
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local %struct.hostap_interface* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HFA384X_INW(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @HFA384X_OUTW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_media_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_media_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el3_private = type { i32, i16, i16, i16, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32, i32, i32 }
%struct.timer_list = type { i32 }

@media = common dso_local global i16 0, align 2
@EL3_STATUS = common dso_local global i64 0, align 8
@IntLatch = common dso_local global i32 0, align 4
@Timer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"interrupt(s) dropped!\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"%s link beat\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lost\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"autonegotiation restarted\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"autonegotiation complete: %dbaseT-%cD selected\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"link partner did not autonegotiate\0A\00", align 1
@Wn3_MAC_Ctrl = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"remote fault detected\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"jabber detected\0A\00", align 1
@lp = common dso_local global %struct.el3_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @media_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @media_check(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.el3_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %10 = ptrtoint %struct.el3_private* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i16, i16* @media, align 2
  %13 = zext i16 %12 to i32
  %14 = call %struct.el3_private* @from_timer(i32 %10, %struct.timer_list* %11, i32 %13)
  store %struct.el3_private* %14, %struct.el3_private** %3, align 8
  %15 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %16 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %15, i32 0, i32 7
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @netif_device_present(%struct.net_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %232

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* @EL3_STATUS, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inw(i64 %31)
  %33 = load i32, i32* @IntLatch, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* @Timer, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inb(i64 %40)
  %42 = icmp eq i32 %41, 255
  br i1 %42, label %43, label %64

43:                                               ; preds = %36
  %44 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %45 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @local_irq_save(i64 %52)
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = call i32 @el3_interrupt(i32 %56, %struct.net_device* %57)
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @local_irq_restore(i64 %59)
  %61 = load i32, i32* @HZ, align 4
  %62 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %63 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %51, %36, %27
  %65 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %66 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %64
  %70 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %71 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  %74 = load i8*, i8** @jiffies, align 8
  %75 = load i32, i32* @HZ, align 4
  %76 = mul nsw i32 2, %75
  %77 = sdiv i32 %76, 100
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %74, i64 %78
  %80 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %81 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  %83 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %84 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %83, i32 0, i32 4
  %85 = call i32 @add_timer(%struct.TYPE_4__* %84)
  br label %243

86:                                               ; preds = %64
  %87 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %88 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %87, i32 0, i32 5
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = call i32 @EL3WINDOW(i32 4)
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %94 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = call zeroext i16 @mdio_read(i32 %92, i32 %95, i32 1)
  store i16 %96, i16* %7, align 2
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %99 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = call zeroext i16 @mdio_read(i32 %97, i32 %100, i32 5)
  store i16 %101, i16* %8, align 2
  %102 = call i32 @EL3WINDOW(i32 1)
  %103 = load i16, i16* %7, align 2
  %104 = zext i16 %103 to i32
  %105 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %106 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %105, i32 0, i32 1
  %107 = load i16, i16* %106, align 4
  %108 = zext i16 %107 to i32
  %109 = icmp ne i32 %104, %108
  br i1 %109, label %110, label %227

110:                                              ; preds = %86
  %111 = load i16, i16* %7, align 2
  %112 = zext i16 %111 to i32
  %113 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %114 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %113, i32 0, i32 1
  %115 = load i16, i16* %114, align 4
  %116 = zext i16 %115 to i32
  %117 = xor i32 %112, %116
  %118 = and i32 %117, 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %110
  %121 = load %struct.net_device*, %struct.net_device** %4, align 8
  %122 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %123 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %122, i32 0, i32 1
  %124 = load i16, i16* %123, align 4
  %125 = zext i16 %124 to i32
  %126 = and i32 %125, 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %130 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %120, %110
  %132 = load i16, i16* %7, align 2
  %133 = zext i16 %132 to i32
  %134 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %135 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %134, i32 0, i32 1
  %136 = load i16, i16* %135, align 4
  %137 = zext i16 %136 to i32
  %138 = xor i32 %133, %137
  %139 = and i32 %138, 32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %207

141:                                              ; preds = %131
  %142 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %143 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %142, i32 0, i32 2
  store i16 0, i16* %143, align 2
  %144 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %145 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %144, i32 0, i32 1
  %146 = load i16, i16* %145, align 4
  %147 = zext i16 %146 to i32
  %148 = and i32 %147, 32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = load %struct.net_device*, %struct.net_device** %4, align 8
  %152 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %186

153:                                              ; preds = %141
  %154 = load i16, i16* %8, align 2
  %155 = icmp ne i16 %154, 0
  br i1 %155, label %156, label %182

156:                                              ; preds = %153
  %157 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %158 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %157, i32 0, i32 3
  %159 = load i16, i16* %158, align 8
  %160 = zext i16 %159 to i32
  %161 = load i16, i16* %8, align 2
  %162 = zext i16 %161 to i32
  %163 = and i32 %162, %160
  %164 = trunc i32 %163 to i16
  store i16 %164, i16* %8, align 2
  %165 = load i16, i16* %8, align 2
  %166 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %167 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %166, i32 0, i32 2
  store i16 %165, i16* %167, align 2
  %168 = load %struct.net_device*, %struct.net_device** %4, align 8
  %169 = load i16, i16* %8, align 2
  %170 = zext i16 %169 to i32
  %171 = and i32 %170, 384
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 100, i32 10
  %175 = load i16, i16* %8, align 2
  %176 = zext i16 %175 to i32
  %177 = and i32 %176, 320
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 70, i32 72
  %181 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %168, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %174, i32 %180)
  br label %185

182:                                              ; preds = %153
  %183 = load %struct.net_device*, %struct.net_device** %4, align 8
  %184 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %183, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %156
  br label %186

186:                                              ; preds = %185, %150
  %187 = call i32 @EL3WINDOW(i32 3)
  %188 = load i16, i16* %8, align 2
  %189 = zext i16 %188 to i32
  %190 = and i32 %189, 320
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 32, i32 0
  %194 = load %struct.net_device*, %struct.net_device** %4, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %196, 1500
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 64, i32 0
  %200 = or i32 %193, %199
  %201 = load i32, i32* %5, align 4
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* @Wn3_MAC_Ctrl, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @outb(i32 %200, i64 %204)
  %206 = call i32 @EL3WINDOW(i32 1)
  br label %207

207:                                              ; preds = %186, %131
  %208 = load i16, i16* %7, align 2
  %209 = zext i16 %208 to i32
  %210 = and i32 %209, 16
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load %struct.net_device*, %struct.net_device** %4, align 8
  %214 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %213, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %215

215:                                              ; preds = %212, %207
  %216 = load i16, i16* %7, align 2
  %217 = zext i16 %216 to i32
  %218 = and i32 %217, 2
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %215
  %221 = load %struct.net_device*, %struct.net_device** %4, align 8
  %222 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %221, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %215
  %224 = load i16, i16* %7, align 2
  %225 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %226 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %225, i32 0, i32 1
  store i16 %224, i16* %226, align 4
  br label %227

227:                                              ; preds = %223, %86
  %228 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %229 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %228, i32 0, i32 5
  %230 = load i64, i64* %6, align 8
  %231 = call i32 @spin_unlock_irqrestore(i32* %229, i64 %230)
  br label %232

232:                                              ; preds = %227, %26
  %233 = load i8*, i8** @jiffies, align 8
  %234 = load i32, i32* @HZ, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr i8, i8* %233, i64 %235
  %237 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %238 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  store i8* %236, i8** %239, align 8
  %240 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %241 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %240, i32 0, i32 4
  %242 = call i32 @add_timer(%struct.TYPE_4__* %241)
  br label %243

243:                                              ; preds = %232, %69
  ret void
}

declare dso_local %struct.el3_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @el3_interrupt(i32, %struct.net_device*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local zeroext i16 @mdio_read(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

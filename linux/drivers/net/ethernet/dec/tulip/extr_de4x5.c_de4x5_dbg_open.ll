; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_dbg_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_dbg_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i16, i16, i32 }
%struct.de4x5_private = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@de4x5_debug = common dso_local global i32 0, align 4
@DEBUG_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: de4x5 opening with irq %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\09physical address: %pM\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Descriptor head addresses:\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\090x%8.8lx  0x%8.8lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Descriptor addresses:\0ARX: \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"0x%8.8lx  \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"...0x%8.8lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"TX: \00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Descriptor buffers:\0ARX: \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"0x%8.8x  \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"...0x%8.8x\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Ring size:\0ARX: %d\0ATX: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @de4x5_dbg_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de4x5_dbg_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %5)
  store %struct.de4x5_private* %6, %struct.de4x5_private** %3, align 8
  %7 = load i32, i32* @de4x5_debug, align 4
  %8 = load i32, i32* @DEBUG_OPEN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %196

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i16, i16* %13, align 4
  %15 = sext i16 %14 to i32
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 2
  %19 = sext i16 %18 to i32
  %20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %27 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = ptrtoint %struct.TYPE_3__* %28 to i16
  %30 = sext i16 %29 to i32
  %31 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %32 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = ptrtoint %struct.TYPE_4__* %33 to i16
  %35 = sext i16 %34 to i32
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %30, i32 %35)
  %37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %60, %11
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %41 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %50 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = ptrtoint i32* %55 to i16
  %57 = sext i16 %56 to i32
  %58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %48, %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %38

63:                                               ; preds = %38
  %64 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %65 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %64, i32 0, i32 3
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = ptrtoint i32* %70 to i16
  %72 = sext i16 %71 to i32
  %73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %72)
  %74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %97, %63
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %78 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %75
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 3
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %87 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = ptrtoint i32* %92 to i16
  %94 = sext i16 %93 to i32
  %95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %85, %82
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %75

100:                                              ; preds = %75
  %101 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %102 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = ptrtoint i32* %107 to i16
  %109 = sext i16 %108 to i32
  %110 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  %111 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %134, %100
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %115 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %112
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %120, 3
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %124 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %123, i32 0, i32 3
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @le32_to_cpu(i32 %130)
  %132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %122, %119
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %112

137:                                              ; preds = %112
  %138 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %139 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %138, i32 0, i32 3
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @le32_to_cpu(i32 %145)
  %147 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %146)
  %148 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %171, %137
  %150 = load i32, i32* %4, align 4
  %151 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %152 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 1
  %155 = icmp slt i32 %150, %154
  br i1 %155, label %156, label %174

156:                                              ; preds = %149
  %157 = load i32, i32* %4, align 4
  %158 = icmp slt i32 %157, 3
  br i1 %158, label %159, label %170

159:                                              ; preds = %156
  %160 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %161 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %160, i32 0, i32 2
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @le32_to_cpu(i32 %167)
  %169 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %159, %156
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %4, align 4
  br label %149

174:                                              ; preds = %149
  %175 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %176 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %175, i32 0, i32 2
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @le32_to_cpu(i32 %182)
  %184 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %183)
  %185 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %186 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = trunc i32 %187 to i16
  %189 = sext i16 %188 to i32
  %190 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %191 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = trunc i32 %192 to i16
  %194 = sext i16 %193 to i32
  %195 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %189, i32 %194)
  br label %196

196:                                              ; preds = %174, %1
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_fr.c_fr_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frad_state = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_4__, i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"No LMI status reply received\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Link %sreliable\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@st = common dso_local global %struct.frad_state* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @fr_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fr_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.frad_state*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %10 = load %struct.frad_state*, %struct.frad_state** %3, align 8
  %11 = ptrtoint %struct.frad_state* %10 to i32
  %12 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %13 = load i32, i32* @timer, align 4
  %14 = call %struct.frad_state* @from_timer(i32 %11, %struct.timer_list* %12, i32 %13)
  store %struct.frad_state* %14, %struct.frad_state** %3, align 8
  %15 = load %struct.frad_state*, %struct.frad_state** %3, align 8
  %16 = getelementptr inbounds %struct.frad_state, %struct.frad_state* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %4, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32* @dev_to_hdlc(%struct.net_device* %18)
  store i32* %19, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.TYPE_5__* @state(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %1
  %27 = load i32*, i32** %5, align 8
  %28 = call %struct.TYPE_5__* @state(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load i8*, i8** @jiffies, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call %struct.TYPE_5__* @state(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 6
  %37 = load i8*, i8** %36, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call %struct.TYPE_5__* @state(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HZ, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %37, i64 %45
  %47 = call i64 @time_before(i8* %33, i8* %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %32, %26
  %50 = phi i1 [ false, %26 ], [ %48, %32 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = call %struct.TYPE_5__* @state(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %113

55:                                               ; preds = %1
  %56 = load i32*, i32** %5, align 8
  %57 = call %struct.TYPE_5__* @state(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call %struct.TYPE_5__* @state(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %55
  %67 = load i32*, i32** %5, align 8
  %68 = call %struct.TYPE_5__* @state(i32* %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i32*, i32** %5, align 8
  %77 = call %struct.TYPE_5__* @state(i32* %76)
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %55
  %82 = load i32*, i32** %5, align 8
  %83 = call %struct.TYPE_5__* @state(i32* %82)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %99, %81
  %87 = load i32, i32* %6, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = call %struct.TYPE_5__* @state(i32* %88)
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %87, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, 1
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %9, align 4
  %103 = ashr i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %86

104:                                              ; preds = %86
  %105 = load i32, i32* %7, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = call %struct.TYPE_5__* @state(i32* %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %105, %110
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %104, %49
  %114 = load i32*, i32** %5, align 8
  %115 = call %struct.TYPE_5__* @state(i32* %114)
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %113
  %121 = load %struct.net_device*, %struct.net_device** %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %126 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %125)
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.net_device*, %struct.net_device** %4, align 8
  %129 = call i32 @fr_set_link_state(i32 %127, %struct.net_device* %128)
  br label %130

130:                                              ; preds = %120, %113
  %131 = load i32*, i32** %5, align 8
  %132 = call %struct.TYPE_5__* @state(i32* %131)
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %130
  %138 = load i8*, i8** @jiffies, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = call %struct.TYPE_5__* @state(i32* %139)
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @HZ, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr i8, i8* %138, i64 %146
  %148 = load i32*, i32** %5, align 8
  %149 = call %struct.TYPE_5__* @state(i32* %148)
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  store i8* %147, i8** %151, align 8
  br label %194

152:                                              ; preds = %130
  %153 = load i32*, i32** %5, align 8
  %154 = call %struct.TYPE_5__* @state(i32* %153)
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %152
  %159 = load i32*, i32** %5, align 8
  %160 = call %struct.TYPE_5__* @state(i32* %159)
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, -1
  store i64 %163, i64* %161, align 8
  br label %164

164:                                              ; preds = %158, %152
  %165 = load %struct.net_device*, %struct.net_device** %4, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = call %struct.TYPE_5__* @state(i32* %166)
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  %171 = zext i1 %170 to i32
  %172 = call i32 @fr_lmi_send(%struct.net_device* %165, i32 %171)
  %173 = load i8*, i8** @jiffies, align 8
  %174 = load i32*, i32** %5, align 8
  %175 = call %struct.TYPE_5__* @state(i32* %174)
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 6
  store i8* %173, i8** %176, align 8
  %177 = load i32*, i32** %5, align 8
  %178 = call %struct.TYPE_5__* @state(i32* %177)
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  %180 = load i8*, i8** @jiffies, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = call %struct.TYPE_5__* @state(i32* %181)
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @HZ, align 4
  %187 = mul nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr i8, i8* %180, i64 %188
  %190 = load i32*, i32** %5, align 8
  %191 = call %struct.TYPE_5__* @state(i32* %190)
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  store i8* %189, i8** %193, align 8
  br label %194

194:                                              ; preds = %164, %137
  %195 = load i32*, i32** %5, align 8
  %196 = call %struct.TYPE_5__* @state(i32* %195)
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 4
  %198 = call i32 @add_timer(%struct.TYPE_6__* %197)
  ret void
}

declare dso_local %struct.frad_state* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local %struct.TYPE_5__* @state(i32*) #1

declare dso_local i64 @time_before(i8*, i8*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @fr_set_link_state(i32, %struct.net_device*) #1

declare dso_local i32 @fr_lmi_send(%struct.net_device*, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

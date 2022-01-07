; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-common.c_c8sectpfe_tuner_unregister_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-common.c_c8sectpfe_tuner_unregister_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c8sectpfe = type { i32 }
%struct.c8sectpfei = type { i32, %struct.channel_info** }
%struct.channel_info = type { %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c8sectpfe_tuner_unregister_frontend(%struct.c8sectpfe* %0, %struct.c8sectpfei* %1) #0 {
  %3 = alloca %struct.c8sectpfe*, align 8
  %4 = alloca %struct.c8sectpfei*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.channel_info*, align 8
  store %struct.c8sectpfe* %0, %struct.c8sectpfe** %3, align 8
  store %struct.c8sectpfei* %1, %struct.c8sectpfei** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %62, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %10 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %7
  %14 = load %struct.c8sectpfei*, %struct.c8sectpfei** %4, align 8
  %15 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %14, i32 0, i32 1
  %16 = load %struct.channel_info**, %struct.channel_info*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.channel_info*, %struct.channel_info** %16, i64 %18
  %20 = load %struct.channel_info*, %struct.channel_info** %19, align 8
  store %struct.channel_info* %20, %struct.channel_info** %6, align 8
  %21 = load %struct.channel_info*, %struct.channel_info** %6, align 8
  %22 = icmp ne %struct.channel_info* %21, null
  br i1 %22, label %23, label %61

23:                                               ; preds = %13
  %24 = load %struct.channel_info*, %struct.channel_info** %6, align 8
  %25 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.channel_info*, %struct.channel_info** %6, align 8
  %30 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dvb_unregister_frontend(i64 %31)
  %33 = load %struct.channel_info*, %struct.channel_info** %6, align 8
  %34 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dvb_frontend_detach(i64 %35)
  br label %37

37:                                               ; preds = %28, %23
  %38 = load %struct.channel_info*, %struct.channel_info** %6, align 8
  %39 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @i2c_put_adapter(i32 %40)
  %42 = load %struct.channel_info*, %struct.channel_info** %6, align 8
  %43 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %37
  %47 = load %struct.channel_info*, %struct.channel_info** %6, align 8
  %48 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @module_put(i32 %54)
  %56 = load %struct.channel_info*, %struct.channel_info** %6, align 8
  %57 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = call i32 @i2c_unregister_device(%struct.TYPE_6__* %58)
  br label %60

60:                                               ; preds = %46, %37
  br label %61

61:                                               ; preds = %60, %13
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %7

65:                                               ; preds = %7
  %66 = load %struct.c8sectpfe*, %struct.c8sectpfe** %3, align 8
  %67 = call i32 @c8sectpfe_delete(%struct.c8sectpfe* %66)
  ret void
}

declare dso_local i32 @dvb_unregister_frontend(i64) #1

declare dso_local i32 @dvb_frontend_detach(i64) #1

declare dso_local i32 @i2c_put_adapter(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @i2c_unregister_device(%struct.TYPE_6__*) #1

declare dso_local i32 @c8sectpfe_delete(%struct.c8sectpfe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

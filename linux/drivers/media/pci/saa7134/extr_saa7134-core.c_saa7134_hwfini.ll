; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_hwfini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_hwfini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"hwfini\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*)* @saa7134_hwfini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_hwfini(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %3 = call i32 @core_dbg(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %5 = call i64 @card_has_mpeg(%struct.saa7134_dev* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %9 = call i32 @saa7134_ts_fini(%struct.saa7134_dev* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %12 = call i32 @saa7134_input_fini(%struct.saa7134_dev* %11)
  %13 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %14 = call i32 @saa7134_vbi_fini(%struct.saa7134_dev* %13)
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %16 = call i32 @saa7134_tvaudio_fini(%struct.saa7134_dev* %15)
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %18 = call i32 @saa7134_video_fini(%struct.saa7134_dev* %17)
  ret i32 0
}

declare dso_local i32 @core_dbg(i8*) #1

declare dso_local i64 @card_has_mpeg(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_ts_fini(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_input_fini(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_vbi_fini(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_tvaudio_fini(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_video_fini(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

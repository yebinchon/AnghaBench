; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-cpld.c_cobalt_cpld_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-cpld.c_cobalt_cpld_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"CPLD revision %u is not supported!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cobalt_cpld_status(%struct.cobalt* %0) #0 {
  %2 = alloca %struct.cobalt*, align 8
  %3 = alloca i32, align 4
  store %struct.cobalt* %0, %struct.cobalt** %2, align 8
  %4 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %5 = call i32 @cpld_read(%struct.cobalt* %4, i32 48)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %10 [
    i32 3, label %7
    i32 4, label %7
    i32 5, label %7
  ]

7:                                                ; preds = %1, %1, %1
  %8 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %9 = call i32 @cpld_info_ver3(%struct.cobalt* %8)
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @cobalt_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @cpld_read(%struct.cobalt*, i32) #1

declare dso_local i32 @cpld_info_ver3(%struct.cobalt*) #1

declare dso_local i32 @cobalt_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

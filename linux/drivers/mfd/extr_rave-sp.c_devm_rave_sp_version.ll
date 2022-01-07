; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_devm_rave_sp_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rave-sp.c_devm_rave_sp_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rave_sp_version = type { i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%02d%02d%02d.%c%c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, %struct.rave_sp_version*)* @devm_rave_sp_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @devm_rave_sp_version(%struct.device* %0, %struct.rave_sp_version* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rave_sp_version*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rave_sp_version* %1, %struct.rave_sp_version** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load %struct.rave_sp_version*, %struct.rave_sp_version** %4, align 8
  %8 = getelementptr inbounds %struct.rave_sp_version, %struct.rave_sp_version* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rave_sp_version*, %struct.rave_sp_version** %4, align 8
  %11 = getelementptr inbounds %struct.rave_sp_version, %struct.rave_sp_version* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le16_to_cpu(i32 %12)
  %14 = load %struct.rave_sp_version*, %struct.rave_sp_version** %4, align 8
  %15 = getelementptr inbounds %struct.rave_sp_version, %struct.rave_sp_version* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rave_sp_version*, %struct.rave_sp_version** %4, align 8
  %18 = getelementptr inbounds %struct.rave_sp_version, %struct.rave_sp_version* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rave_sp_version*, %struct.rave_sp_version** %4, align 8
  %23 = getelementptr inbounds %struct.rave_sp_version, %struct.rave_sp_version* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @devm_kasprintf(%struct.device* %5, i32 %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %16, i32 %21, i32 %26)
  ret i8* %27
}

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

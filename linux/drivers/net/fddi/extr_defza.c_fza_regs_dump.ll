; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_regs_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_regs_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fza_private = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s: iomem registers:\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c" reset:           0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c" interrupt event: 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c" status:          0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c" interrupt mask:  0x%04x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c" control A:       0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c" control B:       0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fza_private*)* @fza_regs_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fza_regs_dump(%struct.fza_private* %0) #0 {
  %2 = alloca %struct.fza_private*, align 8
  store %struct.fza_private* %0, %struct.fza_private** %2, align 8
  %3 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %4 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %8 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  %11 = call i32 @readw_o(i32* %10)
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %14 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = call i32 @readw_u(i32* %16)
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %20 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = call i32 @readw_u(i32* %22)
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %26 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = call i32 @readw_u(i32* %28)
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %29)
  %31 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %32 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @readw_u(i32* %34)
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %35)
  %37 = load %struct.fza_private*, %struct.fza_private** %2, align 8
  %38 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @readw_u(i32* %40)
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @readw_o(i32*) #1

declare dso_local i32 @readw_u(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

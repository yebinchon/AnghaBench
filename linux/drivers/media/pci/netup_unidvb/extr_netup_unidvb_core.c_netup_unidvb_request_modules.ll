; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/netup_unidvb/extr_netup_unidvb_core.c_netup_unidvb_request_modules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/netup_unidvb/extr_netup_unidvb_core.c_netup_unidvb_request_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@netup_unidvb_request_modules.modules = internal constant [6 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"lnbh25\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ascot2e\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"horus3a\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cxd2841er\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"helene\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"request_module(%s) failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @netup_unidvb_request_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netup_unidvb_request_modules(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  store i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @netup_unidvb_request_modules.modules, i64 0, i64 0), i8*** %3, align 8
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i8**, i8*** %3, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load i8**, i8*** %3, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @request_module(i8* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = load i8**, i8*** %3, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dev_warn(%struct.device* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %9
  %22 = load i8**, i8*** %3, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i32 1
  store i8** %23, i8*** %3, align 8
  br label %5

24:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @request_module(i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

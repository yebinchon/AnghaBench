; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_datagram.c_vmci_datagram_create_handle_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_datagram.c_vmci_datagram_create_handle_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_handle = type { i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Client callback needed when creating datagram\0A\00", align 1
@VMCI_PRIVILEGE_ALL_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_datagram_create_handle_priv(i32 %0, i32 %1, i32 %2, i32* %3, i8* %4, %struct.vmci_handle* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.vmci_handle*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.vmci_handle* %5, %struct.vmci_handle** %13, align 8
  %14 = load %struct.vmci_handle*, %struct.vmci_handle** %13, align 8
  %15 = icmp eq %struct.vmci_handle* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %17, i32* %7, align 4
  br label %40

18:                                               ; preds = %6
  %19 = load i32*, i32** %11, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = call i32 @pr_devel(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %23, i32* %7, align 4
  br label %40

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @VMCI_PRIVILEGE_ALL_FLAGS, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %31, i32* %7, align 4
  br label %40

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load %struct.vmci_handle*, %struct.vmci_handle** %13, align 8
  %39 = call i32 @dg_create_handle(i32 %33, i32 %34, i32 %35, i32* %36, i8* %37, %struct.vmci_handle* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %32, %30, %21, %16
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @dg_create_handle(i32, i32, i32, i32*, i8*, %struct.vmci_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

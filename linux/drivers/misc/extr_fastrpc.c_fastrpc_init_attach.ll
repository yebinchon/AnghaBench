; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_init_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_init_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fastrpc_user = type { i32, i64 }
%struct.fastrpc_invoke_args = type { i32, i32, i64, i64 }

@FASTRPC_RMID_INIT_ATTACH = common dso_local global i32 0, align 4
@FASTRPC_INIT_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fastrpc_user*)* @fastrpc_init_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastrpc_init_attach(%struct.fastrpc_user* %0) #0 {
  %2 = alloca %struct.fastrpc_user*, align 8
  %3 = alloca [1 x %struct.fastrpc_invoke_args], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fastrpc_user* %0, %struct.fastrpc_user** %2, align 8
  %6 = load %struct.fastrpc_user*, %struct.fastrpc_user** %2, align 8
  %7 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = ptrtoint i32* %4 to i64
  %10 = getelementptr inbounds [1 x %struct.fastrpc_invoke_args], [1 x %struct.fastrpc_invoke_args]* %3, i64 0, i64 0
  %11 = getelementptr inbounds %struct.fastrpc_invoke_args, %struct.fastrpc_invoke_args* %10, i32 0, i32 3
  store i64 %9, i64* %11, align 16
  %12 = getelementptr inbounds [1 x %struct.fastrpc_invoke_args], [1 x %struct.fastrpc_invoke_args]* %3, i64 0, i64 0
  %13 = getelementptr inbounds %struct.fastrpc_invoke_args, %struct.fastrpc_invoke_args* %12, i32 0, i32 0
  store i32 4, i32* %13, align 16
  %14 = getelementptr inbounds [1 x %struct.fastrpc_invoke_args], [1 x %struct.fastrpc_invoke_args]* %3, i64 0, i64 0
  %15 = getelementptr inbounds %struct.fastrpc_invoke_args, %struct.fastrpc_invoke_args* %14, i32 0, i32 1
  store i32 -1, i32* %15, align 4
  %16 = getelementptr inbounds [1 x %struct.fastrpc_invoke_args], [1 x %struct.fastrpc_invoke_args]* %3, i64 0, i64 0
  %17 = getelementptr inbounds %struct.fastrpc_invoke_args, %struct.fastrpc_invoke_args* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @FASTRPC_RMID_INIT_ATTACH, align 4
  %19 = call i32 @FASTRPC_SCALARS(i32 %18, i32 1, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.fastrpc_user*, %struct.fastrpc_user** %2, align 8
  %21 = getelementptr inbounds %struct.fastrpc_user, %struct.fastrpc_user* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.fastrpc_user*, %struct.fastrpc_user** %2, align 8
  %23 = load i32, i32* @FASTRPC_INIT_HANDLE, align 4
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds [1 x %struct.fastrpc_invoke_args], [1 x %struct.fastrpc_invoke_args]* %3, i64 0, i64 0
  %26 = call i32 @fastrpc_internal_invoke(%struct.fastrpc_user* %22, i32 1, i32 %23, i32 %24, %struct.fastrpc_invoke_args* %25)
  ret i32 %26
}

declare dso_local i32 @FASTRPC_SCALARS(i32, i32, i32) #1

declare dso_local i32 @fastrpc_internal_invoke(%struct.fastrpc_user*, i32, i32, i32, %struct.fastrpc_invoke_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

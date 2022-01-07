; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_vnic_add_client_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_vnic_add_client_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.vnic_login_client_data = type { i32, i64, i8* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"Linux\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*, %struct.vnic_login_client_data*)* @vnic_add_client_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnic_add_client_data(%struct.ibmvnic_adapter* %0, %struct.vnic_login_client_data* %1) #0 {
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.vnic_login_client_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  store %struct.vnic_login_client_data* %1, %struct.vnic_login_client_data** %4, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %7 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %4, align 8
  %8 = getelementptr inbounds %struct.vnic_login_client_data, %struct.vnic_login_client_data* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i8* @cpu_to_be16(i32 %12)
  %14 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %4, align 8
  %15 = getelementptr inbounds %struct.vnic_login_client_data, %struct.vnic_login_client_data* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %4, align 8
  %17 = getelementptr inbounds %struct.vnic_login_client_data, %struct.vnic_login_client_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @strncpy(i64 %18, i8* %19, i32 %20)
  %22 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %4, align 8
  %23 = getelementptr inbounds %struct.vnic_login_client_data, %struct.vnic_login_client_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = inttoptr i64 %27 to %struct.vnic_login_client_data*
  store %struct.vnic_login_client_data* %28, %struct.vnic_login_client_data** %4, align 8
  %29 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %4, align 8
  %30 = getelementptr inbounds %struct.vnic_login_client_data, %struct.vnic_login_client_data* %29, i32 0, i32 0
  store i32 2, i32* %30, align 8
  %31 = call %struct.TYPE_4__* (...) @utsname()
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i8* @cpu_to_be16(i32 %36)
  %38 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %4, align 8
  %39 = getelementptr inbounds %struct.vnic_login_client_data, %struct.vnic_login_client_data* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %4, align 8
  %41 = getelementptr inbounds %struct.vnic_login_client_data, %struct.vnic_login_client_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.TYPE_4__* (...) @utsname()
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @strncpy(i64 %42, i8* %45, i32 %46)
  %48 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %4, align 8
  %49 = getelementptr inbounds %struct.vnic_login_client_data, %struct.vnic_login_client_data* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = inttoptr i64 %53 to %struct.vnic_login_client_data*
  store %struct.vnic_login_client_data* %54, %struct.vnic_login_client_data** %4, align 8
  %55 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %4, align 8
  %56 = getelementptr inbounds %struct.vnic_login_client_data, %struct.vnic_login_client_data* %55, i32 0, i32 0
  store i32 3, i32* %56, align 8
  %57 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i8* @cpu_to_be16(i32 %64)
  %66 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %4, align 8
  %67 = getelementptr inbounds %struct.vnic_login_client_data, %struct.vnic_login_client_data* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.vnic_login_client_data*, %struct.vnic_login_client_data** %4, align 8
  %69 = getelementptr inbounds %struct.vnic_login_client_data, %struct.vnic_login_client_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @strncpy(i64 %70, i8* %75, i32 %76)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @strncpy(i64, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @utsname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

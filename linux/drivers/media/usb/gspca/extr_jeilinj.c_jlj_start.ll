; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jeilinj.c_jlj_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jeilinj.c_jlj_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32 }
%struct.sd = type { i64, i32, i32, i64 }
%struct.jlj_command = type { i32, i32, i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@JEILINJ_CMD_DELAY = common dso_local global i32 0, align 4
@SPORTSCAM_DV15 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Start streaming command failed\0A\00", align 1
@SPORTSCAM_DV15_CMD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @jlj_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jlj_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca [23 x %struct.jlj_command], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  store i32 255, i32* %5, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %6, align 8
  %10 = getelementptr inbounds [23 x %struct.jlj_command], [23 x %struct.jlj_command]* %7, i64 0, i64 0
  %11 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %10, i32 0, i32 0
  store i32 113, i32* %11, align 16
  %12 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %10, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %10, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %10, i32 0, i32 3
  store i32 0, i32* %14, align 16
  %15 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %10, i32 0, i32 4
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %10, i32 0, i32 5
  %17 = bitcast %struct.TYPE_2__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %10, i64 1
  %19 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %18, i32 0, i32 0
  store i32 112, i32* %19, align 16
  %20 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %18, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %18, i32 0, i32 2
  %22 = load i32, i32* @JEILINJ_CMD_DELAY, align 4
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %21, align 8
  %24 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %18, i32 0, i32 3
  store i32 0, i32* %24, align 16
  %25 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %18, i32 0, i32 4
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %18, i32 0, i32 5
  %27 = bitcast %struct.TYPE_2__* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 8, i1 false)
  %28 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %18, i64 1
  %29 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %28, i32 0, i32 0
  store i32 149, i32* %29, align 16
  %30 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %28, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %28, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %28, i32 0, i32 3
  store i32 0, i32* %32, align 16
  %33 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %28, i32 0, i32 4
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %28, i32 0, i32 5
  %35 = bitcast %struct.TYPE_2__* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 8, i1 false)
  %36 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %28, i64 1
  %37 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %36, i32 0, i32 0
  store i32 113, i32* %37, align 16
  %38 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %36, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %36, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %36, i32 0, i32 3
  store i32 0, i32* %40, align 16
  %41 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %36, i32 0, i32 4
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %36, i32 0, i32 5
  %43 = bitcast %struct.TYPE_2__* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 8, i1 false)
  %44 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %36, i64 1
  %45 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %44, i32 0, i32 0
  store i32 112, i32* %45, align 16
  %46 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %44, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %44, i32 0, i32 2
  %48 = load i32, i32* @JEILINJ_CMD_DELAY, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %44, i32 0, i32 3
  store i32 0, i32* %50, align 16
  %51 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %44, i32 0, i32 4
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %44, i32 0, i32 5
  %53 = bitcast %struct.TYPE_2__* %52 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %53, i8 0, i64 8, i1 false)
  %54 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %44, i64 1
  %55 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %54, i32 0, i32 0
  store i32 149, i32* %55, align 16
  %56 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %54, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %54, i32 0, i32 2
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %54, i32 0, i32 3
  store i32 0, i32* %58, align 16
  %59 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %54, i32 0, i32 4
  store i32 0, i32* %59, align 4
  %60 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %54, i32 0, i32 5
  %61 = bitcast %struct.TYPE_2__* %60 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %61, i8 0, i64 8, i1 false)
  %62 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %54, i64 1
  %63 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %62, i32 0, i32 0
  store i32 113, i32* %63, align 16
  %64 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %62, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %62, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %62, i32 0, i32 3
  store i32 0, i32* %66, align 16
  %67 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %62, i32 0, i32 4
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %62, i32 0, i32 5
  %69 = bitcast %struct.TYPE_2__* %68 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %69, i8 0, i64 8, i1 false)
  %70 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %62, i64 1
  %71 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %70, i32 0, i32 0
  store i32 112, i32* %71, align 16
  %72 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %70, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %70, i32 0, i32 2
  %74 = load i32, i32* @JEILINJ_CMD_DELAY, align 4
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %73, align 8
  %76 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %70, i32 0, i32 3
  store i32 0, i32* %76, align 16
  %77 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %70, i32 0, i32 4
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %70, i32 0, i32 5
  %79 = bitcast %struct.TYPE_2__* %78 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %79, i8 0, i64 8, i1 false)
  %80 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %70, i64 1
  %81 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %80, i32 0, i32 0
  store i32 149, i32* %81, align 16
  %82 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %80, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %80, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %80, i32 0, i32 3
  store i32 0, i32* %84, align 16
  %85 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %80, i32 0, i32 4
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %80, i32 0, i32 5
  %87 = bitcast %struct.TYPE_2__* %86 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %87, i8 0, i64 8, i1 false)
  %88 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %80, i64 1
  %89 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %88, i32 0, i32 0
  store i32 148, i32* %89, align 16
  %90 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %88, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %88, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %88, i32 0, i32 3
  store i32 0, i32* %92, align 16
  %93 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %88, i32 0, i32 4
  store i32 0, i32* %93, align 4
  %94 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %88, i32 0, i32 5
  %95 = bitcast %struct.TYPE_2__* %94 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %95, i8 0, i64 8, i1 false)
  %96 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %88, i64 1
  %97 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %96, i32 0, i32 0
  store i32 222, i32* %97, align 16
  %98 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %96, i32 0, i32 1
  store i32 0, i32* %98, align 4
  %99 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %96, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %96, i32 0, i32 3
  store i32 0, i32* %100, align 16
  %101 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %96, i32 0, i32 4
  store i32 0, i32* %101, align 4
  %102 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %96, i32 0, i32 5
  %103 = bitcast %struct.TYPE_2__* %102 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %103, i8 0, i64 8, i1 false)
  %104 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %96, i64 1
  %105 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %104, i32 0, i32 0
  store i32 148, i32* %105, align 16
  %106 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %104, i32 0, i32 1
  store i32 0, i32* %106, align 4
  %107 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %104, i32 0, i32 2
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %104, i32 0, i32 3
  store i32 0, i32* %108, align 16
  %109 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %104, i32 0, i32 4
  store i32 0, i32* %109, align 4
  %110 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %104, i32 0, i32 5
  %111 = bitcast %struct.TYPE_2__* %110 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %111, i8 0, i64 8, i1 false)
  %112 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %104, i64 1
  %113 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %112, i32 0, i32 0
  store i32 221, i32* %113, align 16
  %114 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %112, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %112, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %112, i32 0, i32 3
  store i32 0, i32* %116, align 16
  %117 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %112, i32 0, i32 4
  store i32 0, i32* %117, align 4
  %118 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %112, i32 0, i32 5
  %119 = bitcast %struct.TYPE_2__* %118 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %119, i8 0, i64 8, i1 false)
  %120 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %112, i64 1
  %121 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %120, i32 0, i32 0
  store i32 148, i32* %121, align 16
  %122 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %120, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %120, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %120, i32 0, i32 3
  store i32 0, i32* %124, align 16
  %125 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %120, i32 0, i32 4
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %120, i32 0, i32 5
  %127 = bitcast %struct.TYPE_2__* %126 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %127, i8 0, i64 8, i1 false)
  %128 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %120, i64 1
  %129 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %128, i32 0, i32 0
  store i32 227, i32* %129, align 16
  %130 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %128, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %128, i32 0, i32 2
  store i64 0, i64* %131, align 8
  %132 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %128, i32 0, i32 3
  store i32 0, i32* %132, align 16
  %133 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %128, i32 0, i32 4
  store i32 0, i32* %133, align 4
  %134 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %128, i32 0, i32 5
  %135 = bitcast %struct.TYPE_2__* %134 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %135, i8 0, i64 8, i1 false)
  %136 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %128, i64 1
  %137 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %136, i32 0, i32 0
  store i32 148, i32* %137, align 16
  %138 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %136, i32 0, i32 1
  store i32 0, i32* %138, align 4
  %139 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %136, i32 0, i32 2
  store i64 0, i64* %139, align 8
  %140 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %136, i32 0, i32 3
  store i32 0, i32* %140, align 16
  %141 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %136, i32 0, i32 4
  store i32 0, i32* %141, align 4
  %142 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %136, i32 0, i32 5
  %143 = bitcast %struct.TYPE_2__* %142 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %143, i8 0, i64 8, i1 false)
  %144 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %136, i64 1
  %145 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %144, i32 0, i32 0
  store i32 228, i32* %145, align 16
  %146 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %144, i32 0, i32 1
  store i32 0, i32* %146, align 4
  %147 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %144, i32 0, i32 2
  store i64 0, i64* %147, align 8
  %148 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %144, i32 0, i32 3
  store i32 0, i32* %148, align 16
  %149 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %144, i32 0, i32 4
  store i32 0, i32* %149, align 4
  %150 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %144, i32 0, i32 5
  %151 = bitcast %struct.TYPE_2__* %150 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %151, i8 0, i64 8, i1 false)
  %152 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %144, i64 1
  %153 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %152, i32 0, i32 0
  store i32 148, i32* %153, align 16
  %154 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %152, i32 0, i32 1
  store i32 0, i32* %154, align 4
  %155 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %152, i32 0, i32 2
  store i64 0, i64* %155, align 8
  %156 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %152, i32 0, i32 3
  store i32 0, i32* %156, align 16
  %157 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %152, i32 0, i32 4
  store i32 0, i32* %157, align 4
  %158 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %152, i32 0, i32 5
  %159 = bitcast %struct.TYPE_2__* %158 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %159, i8 0, i64 8, i1 false)
  %160 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %152, i64 1
  %161 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %160, i32 0, i32 0
  store i32 229, i32* %161, align 16
  %162 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %160, i32 0, i32 1
  store i32 0, i32* %162, align 4
  %163 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %160, i32 0, i32 2
  store i64 0, i64* %163, align 8
  %164 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %160, i32 0, i32 3
  store i32 0, i32* %164, align 16
  %165 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %160, i32 0, i32 4
  store i32 0, i32* %165, align 4
  %166 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %160, i32 0, i32 5
  %167 = bitcast %struct.TYPE_2__* %166 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %167, i8 0, i64 8, i1 false)
  %168 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %160, i64 1
  %169 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %168, i32 0, i32 0
  store i32 148, i32* %169, align 16
  %170 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %168, i32 0, i32 1
  store i32 0, i32* %170, align 4
  %171 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %168, i32 0, i32 2
  store i64 0, i64* %171, align 8
  %172 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %168, i32 0, i32 3
  store i32 0, i32* %172, align 16
  %173 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %168, i32 0, i32 4
  store i32 0, i32* %173, align 4
  %174 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %168, i32 0, i32 5
  %175 = bitcast %struct.TYPE_2__* %174 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %175, i8 0, i64 8, i1 false)
  %176 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %168, i64 1
  %177 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %176, i32 0, i32 0
  store i32 230, i32* %177, align 16
  %178 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %176, i32 0, i32 1
  store i32 0, i32* %178, align 4
  %179 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %176, i32 0, i32 2
  store i64 0, i64* %179, align 8
  %180 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %176, i32 0, i32 3
  store i32 0, i32* %180, align 16
  %181 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %176, i32 0, i32 4
  store i32 0, i32* %181, align 4
  %182 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %176, i32 0, i32 5
  %183 = bitcast %struct.TYPE_2__* %182 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %183, i8 0, i64 8, i1 false)
  %184 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %176, i64 1
  %185 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %184, i32 0, i32 0
  store i32 148, i32* %185, align 16
  %186 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %184, i32 0, i32 1
  store i32 0, i32* %186, align 4
  %187 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %184, i32 0, i32 2
  store i64 0, i64* %187, align 8
  %188 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %184, i32 0, i32 3
  store i32 0, i32* %188, align 16
  %189 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %184, i32 0, i32 4
  store i32 0, i32* %189, align 4
  %190 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %184, i32 0, i32 5
  %191 = bitcast %struct.TYPE_2__* %190 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %191, i8 0, i64 8, i1 false)
  %192 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %184, i64 1
  %193 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %192, i32 0, i32 0
  store i32 170, i32* %193, align 16
  %194 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %192, i32 0, i32 1
  store i32 0, i32* %194, align 4
  %195 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %192, i32 0, i32 2
  store i64 0, i64* %195, align 8
  %196 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %192, i32 0, i32 3
  store i32 0, i32* %196, align 16
  %197 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %192, i32 0, i32 4
  store i32 0, i32* %197, align 4
  %198 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %192, i32 0, i32 5
  %199 = bitcast %struct.TYPE_2__* %198 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %199, i8 0, i64 8, i1 false)
  %200 = load %struct.sd*, %struct.sd** %6, align 8
  %201 = getelementptr inbounds %struct.sd, %struct.sd* %200, i32 0, i32 3
  store i64 0, i64* %201, align 8
  %202 = load %struct.sd*, %struct.sd** %6, align 8
  %203 = getelementptr inbounds %struct.sd, %struct.sd* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @SPORTSCAM_DV15, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %1
  store i32 9, i32* %4, align 4
  br label %211

208:                                              ; preds = %1
  %209 = getelementptr inbounds [23 x %struct.jlj_command], [23 x %struct.jlj_command]* %7, i64 0, i64 0
  %210 = call i32 @ARRAY_SIZE(%struct.jlj_command* %209)
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %208, %207
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %248, %211
  %213 = load i32, i32* %3, align 4
  %214 = load i32, i32* %4, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %251

216:                                              ; preds = %212
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %218 = load i32, i32* %3, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [23 x %struct.jlj_command], [23 x %struct.jlj_command]* %7, i64 0, i64 %219
  %221 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 16
  %223 = call i32 @jlj_write2(%struct.gspca_dev* %217, i32 %222)
  %224 = load i32, i32* %3, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [23 x %struct.jlj_command], [23 x %struct.jlj_command]* %7, i64 0, i64 %225
  %227 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %216
  %231 = load i32, i32* %3, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [23 x %struct.jlj_command], [23 x %struct.jlj_command]* %7, i64 0, i64 %232
  %234 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @msleep(i32 %235)
  br label %237

237:                                              ; preds = %230, %216
  %238 = load i32, i32* %3, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [23 x %struct.jlj_command], [23 x %struct.jlj_command]* %7, i64 0, i64 %239
  %241 = getelementptr inbounds %struct.jlj_command, %struct.jlj_command* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %246 = call i32 @jlj_read1(%struct.gspca_dev* %245, i32* %5)
  br label %247

247:                                              ; preds = %244, %237
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %3, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %3, align 4
  br label %212

251:                                              ; preds = %212
  %252 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %253 = load %struct.sd*, %struct.sd** %6, align 8
  %254 = getelementptr inbounds %struct.sd, %struct.sd* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @v4l2_ctrl_g_ctrl(i32 %255)
  %257 = call i32 @setcamquality(%struct.gspca_dev* %252, i32 %256)
  %258 = call i32 @msleep(i32 2)
  %259 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %260 = load %struct.sd*, %struct.sd** %6, align 8
  %261 = getelementptr inbounds %struct.sd, %struct.sd* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @v4l2_ctrl_g_ctrl(i32 %262)
  %264 = call i32 @setfreq(%struct.gspca_dev* %259, i32 %263)
  %265 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %266 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp slt i64 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %251
  %270 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %271 = call i32 @gspca_err(%struct.gspca_dev* %270, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %272

272:                                              ; preds = %269, %251
  %273 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %274 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = trunc i64 %275 to i32
  ret i32 %276
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.jlj_command*) #2

declare dso_local i32 @jlj_write2(%struct.gspca_dev*, i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @jlj_read1(%struct.gspca_dev*, i32*) #2

declare dso_local i32 @setcamquality(%struct.gspca_dev*, i32) #2

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #2

declare dso_local i32 @setfreq(%struct.gspca_dev*, i32) #2

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

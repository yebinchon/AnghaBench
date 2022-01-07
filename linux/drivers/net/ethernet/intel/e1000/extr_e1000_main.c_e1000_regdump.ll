; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_regdump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_regdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@e1000_regdump.reg_name = internal constant [38 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"STATUS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"RCTL\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"RDLEN\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RDH\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"RDT\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"RDTR\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"TCTL\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"TDBAL\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"TDBAH\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"TDLEN\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"TDH\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"TDT\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"TIDV\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"TXDCTL\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"TADV\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"TARC0\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"TDBAL1\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"TDBAH1\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"TDLEN1\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"TDH1\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"TDT1\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"TXDCTL1\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"TARC1\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"CTRL_EXT\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"ERT\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"RDBAL\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"RDBAH\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"TDFH\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"TDFT\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"TDFHS\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"TDFTS\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"TDFPC\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"RDFH\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"RDFT\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"RDFHS\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"RDFTS\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"RDFPC\00", align 1
@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@RDLEN = common dso_local global i32 0, align 4
@RDH = common dso_local global i32 0, align 4
@RDT = common dso_local global i32 0, align 4
@RDTR = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@TDBAL = common dso_local global i32 0, align 4
@TDBAH = common dso_local global i32 0, align 4
@TDLEN = common dso_local global i32 0, align 4
@TDH = common dso_local global i32 0, align 4
@TDT = common dso_local global i32 0, align 4
@TIDV = common dso_local global i32 0, align 4
@TXDCTL = common dso_local global i32 0, align 4
@TADV = common dso_local global i32 0, align 4
@TARC0 = common dso_local global i32 0, align 4
@TDBAL1 = common dso_local global i32 0, align 4
@TDBAH1 = common dso_local global i32 0, align 4
@TDLEN1 = common dso_local global i32 0, align 4
@TDH1 = common dso_local global i32 0, align 4
@TDT1 = common dso_local global i32 0, align 4
@TXDCTL1 = common dso_local global i32 0, align 4
@TARC1 = common dso_local global i32 0, align 4
@CTRL_EXT = common dso_local global i32 0, align 4
@ERT = common dso_local global i32 0, align 4
@RDBAL0 = common dso_local global i32 0, align 4
@RDBAH0 = common dso_local global i32 0, align 4
@TDFH = common dso_local global i32 0, align 4
@TDFT = common dso_local global i32 0, align 4
@TDFHS = common dso_local global i32 0, align 4
@TDFTS = common dso_local global i32 0, align 4
@TDFPC = common dso_local global i32 0, align 4
@RDFH = common dso_local global i32 0, align 4
@RDFT = common dso_local global i32 0, align 4
@RDFHS = common dso_local global i32 0, align 4
@RDFTS = common dso_local global i32 0, align 4
@RDFPC = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [15 x i8] c"Register dump\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"%-15s  %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_regdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_regdump(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 0
  store %struct.e1000_hw* %9, %struct.e1000_hw** %3, align 8
  %10 = load i32, i32* @NUM_REGS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  store i32* %13, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @CTRL, align 4
  %15 = call i32 @er32(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @STATUS, align 4
  %19 = call i32 @er32(i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @RCTL, align 4
  %23 = call i32 @er32(i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @RDLEN, align 4
  %27 = call i32 @er32(i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @RDH, align 4
  %31 = call i32 @er32(i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @RDT, align 4
  %35 = call i32 @er32(i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @RDTR, align 4
  %39 = call i32 @er32(i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @TCTL, align 4
  %43 = call i32 @er32(i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @TDBAL, align 4
  %47 = call i32 @er32(i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 8
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @TDBAH, align 4
  %51 = call i32 @er32(i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 9
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @TDLEN, align 4
  %55 = call i32 @er32(i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 10
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @TDH, align 4
  %59 = call i32 @er32(i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 11
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @TDT, align 4
  %63 = call i32 @er32(i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 12
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @TIDV, align 4
  %67 = call i32 @er32(i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 13
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @TXDCTL, align 4
  %71 = call i32 @er32(i32 %70)
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 14
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @TADV, align 4
  %75 = call i32 @er32(i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 15
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @TARC0, align 4
  %79 = call i32 @er32(i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 16
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @TDBAL1, align 4
  %83 = call i32 @er32(i32 %82)
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 17
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @TDBAH1, align 4
  %87 = call i32 @er32(i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 18
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @TDLEN1, align 4
  %91 = call i32 @er32(i32 %90)
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 19
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @TDH1, align 4
  %95 = call i32 @er32(i32 %94)
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 20
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @TDT1, align 4
  %99 = call i32 @er32(i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 21
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @TXDCTL1, align 4
  %103 = call i32 @er32(i32 %102)
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 22
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @TARC1, align 4
  %107 = call i32 @er32(i32 %106)
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 23
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @CTRL_EXT, align 4
  %111 = call i32 @er32(i32 %110)
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 24
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @ERT, align 4
  %115 = call i32 @er32(i32 %114)
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 25
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @RDBAL0, align 4
  %119 = call i32 @er32(i32 %118)
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 26
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @RDBAH0, align 4
  %123 = call i32 @er32(i32 %122)
  %124 = load i32*, i32** %6, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 27
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @TDFH, align 4
  %127 = call i32 @er32(i32 %126)
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 28
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @TDFT, align 4
  %131 = call i32 @er32(i32 %130)
  %132 = load i32*, i32** %6, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 29
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @TDFHS, align 4
  %135 = call i32 @er32(i32 %134)
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 30
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @TDFTS, align 4
  %139 = call i32 @er32(i32 %138)
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 31
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @TDFPC, align 4
  %143 = call i32 @er32(i32 %142)
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 32
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @RDFH, align 4
  %147 = call i32 @er32(i32 %146)
  %148 = load i32*, i32** %6, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 33
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @RDFT, align 4
  %151 = call i32 @er32(i32 %150)
  %152 = load i32*, i32** %6, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 34
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @RDFHS, align 4
  %155 = call i32 @er32(i32 %154)
  %156 = load i32*, i32** %6, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 35
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @RDFTS, align 4
  %159 = call i32 @er32(i32 %158)
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 36
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* @RDFPC, align 4
  %163 = call i32 @er32(i32 %162)
  %164 = load i32*, i32** %6, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 37
  store i32 %163, i32* %165, align 4
  %166 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %182, %1
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @NUM_REGS, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %185

171:                                              ; preds = %167
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [38 x i8*], [38 x i8*]* @e1000_regdump.reg_name, i64 0, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i8* %175, i32 %180)
  br label %182

182:                                              ; preds = %171
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %167

185:                                              ; preds = %167
  %186 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %186)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @er32(i32) #2

declare dso_local i32 @pr_info(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
